namespace PH.RWO.UI.Amend
{
    partial class AmendWoDetail
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
            System.Windows.Forms.Label amendNoLabel;
            System.Windows.Forms.Label verIdLabel;
            System.Windows.Forms.Label workOrderLabel;
            System.Windows.Forms.Label factoryLabel;
            System.Windows.Forms.Label phStyleNoLabel;
            System.Windows.Forms.Label custStyleLabel;
            System.Windows.Forms.Label projectLabel;
            System.Windows.Forms.Label exitDateLabel;
            this.amendNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.verIdTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.workOrderGridLookUpEditView = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcFac = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProj = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPhstyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcExtDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.glueWO = new DevExpress.XtraEditors.GridLookUpEdit();
            this.edtFac = new DevExpress.XtraEditors.TextEdit();
            this.edtStyle = new DevExpress.XtraEditors.TextEdit();
            this.edtCStyle = new DevExpress.XtraEditors.TextEdit();
            this.edtProj = new DevExpress.XtraEditors.TextEdit();
            this.edtExDate = new DevExpress.XtraEditors.TextEdit();
            amendNoLabel = new System.Windows.Forms.Label();
            verIdLabel = new System.Windows.Forms.Label();
            workOrderLabel = new System.Windows.Forms.Label();
            factoryLabel = new System.Windows.Forms.Label();
            phStyleNoLabel = new System.Windows.Forms.Label();
            custStyleLabel = new System.Windows.Forms.Label();
            projectLabel = new System.Windows.Forms.Label();
            exitDateLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.amendNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.verIdTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.workOrderGridLookUpEditView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.glueWO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFac.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProj.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtExDate.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.AmendDetail);
            // 
            // amendNoLabel
            // 
            amendNoLabel.AutoSize = true;
            amendNoLabel.Location = new System.Drawing.Point(92, 77);
            amendNoLabel.Name = "amendNoLabel";
            amendNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(amendNoLabel, null);
            amendNoLabel.TabIndex = 4;
            amendNoLabel.Text = "通知單號";
            // 
            // verIdLabel
            // 
            verIdLabel.AutoSize = true;
            verIdLabel.Location = new System.Drawing.Point(311, 79);
            verIdLabel.Name = "verIdLabel";
            verIdLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(verIdLabel, null);
            verIdLabel.TabIndex = 6;
            verIdLabel.Text = "版本";
            // 
            // workOrderLabel
            // 
            workOrderLabel.AutoSize = true;
            workOrderLabel.Location = new System.Drawing.Point(480, 79);
            workOrderLabel.Name = "workOrderLabel";
            workOrderLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(workOrderLabel, null);
            workOrderLabel.TabIndex = 8;
            workOrderLabel.Text = "制單號";
            // 
            // factoryLabel
            // 
            factoryLabel.AutoSize = true;
            factoryLabel.Location = new System.Drawing.Point(98, 135);
            factoryLabel.Name = "factoryLabel";
            factoryLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(factoryLabel, null);
            factoryLabel.TabIndex = 10;
            factoryLabel.Text = "工廠";
            // 
            // phStyleNoLabel
            // 
            phStyleNoLabel.AutoSize = true;
            phStyleNoLabel.Location = new System.Drawing.Point(299, 135);
            phStyleNoLabel.Name = "phStyleNoLabel";
            phStyleNoLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(phStyleNoLabel, null);
            phStyleNoLabel.TabIndex = 12;
            phStyleNoLabel.Text = "PH款號";
            // 
            // custStyleLabel
            // 
            custStyleLabel.AutoSize = true;
            custStyleLabel.Location = new System.Drawing.Point(480, 135);
            custStyleLabel.Name = "custStyleLabel";
            custStyleLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(custStyleLabel, null);
            custStyleLabel.TabIndex = 14;
            custStyleLabel.Text = "客款號";
            // 
            // projectLabel
            // 
            projectLabel.AutoSize = true;
            projectLabel.Location = new System.Drawing.Point(98, 203);
            projectLabel.Name = "projectLabel";
            projectLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(projectLabel, null);
            projectLabel.TabIndex = 16;
            projectLabel.Text = "工程號";
            // 
            // exitDateLabel
            // 
            exitDateLabel.AutoSize = true;
            exitDateLabel.Location = new System.Drawing.Point(287, 204);
            exitDateLabel.Name = "exitDateLabel";
            exitDateLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(exitDateLabel, null);
            exitDateLabel.TabIndex = 18;
            exitDateLabel.Text = "離廠日期";
            // 
            // amendNoTextEdit
            // 
            this.amendNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AmendNo", true));
            this.amendNoTextEdit.Location = new System.Drawing.Point(157, 74);
            this.amendNoTextEdit.Name = "amendNoTextEdit";
            this.amendNoTextEdit.Size = new System.Drawing.Size(100, 21);
            this.amendNoTextEdit.TabIndex = 5;
            // 
            // verIdTextEdit
            // 
            this.verIdTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "VerId", true));
            this.verIdTextEdit.Location = new System.Drawing.Point(346, 74);
            this.verIdTextEdit.Name = "verIdTextEdit";
            this.verIdTextEdit.Size = new System.Drawing.Size(108, 21);
            this.verIdTextEdit.TabIndex = 7;
            // 
            // workOrderGridLookUpEditView
            // 
            this.workOrderGridLookUpEditView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcFac,
            this.gcProj,
            this.gcWO,
            this.gcPhstyle,
            this.gcCustStyle,
            this.gcExtDate});
            this.workOrderGridLookUpEditView.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.workOrderGridLookUpEditView.Name = "workOrderGridLookUpEditView";
            this.workOrderGridLookUpEditView.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.workOrderGridLookUpEditView.OptionsView.ShowGroupPanel = false;
            // 
            // gcFac
            // 
            this.gcFac.Caption = "工廠";
            this.gcFac.FieldName = "factory";
            this.gcFac.Name = "gcFac";
            this.gcFac.Visible = true;
            this.gcFac.VisibleIndex = 0;
            this.gcFac.Width = 43;
            // 
            // gcProj
            // 
            this.gcProj.Caption = "工程號";
            this.gcProj.FieldName = "projectno";
            this.gcProj.Name = "gcProj";
            this.gcProj.Visible = true;
            this.gcProj.VisibleIndex = 1;
            this.gcProj.Width = 94;
            // 
            // gcWO
            // 
            this.gcWO.Caption = "制單";
            this.gcWO.FieldName = "WorkOrderNo";
            this.gcWO.Name = "gcWO";
            this.gcWO.Visible = true;
            this.gcWO.VisibleIndex = 2;
            this.gcWO.Width = 88;
            // 
            // gcPhstyle
            // 
            this.gcPhstyle.Caption = "PH款號";
            this.gcPhstyle.FieldName = "StyleNo";
            this.gcPhstyle.Name = "gcPhstyle";
            this.gcPhstyle.Visible = true;
            this.gcPhstyle.VisibleIndex = 3;
            this.gcPhstyle.Width = 144;
            // 
            // gcCustStyle
            // 
            this.gcCustStyle.Caption = "客款號";
            this.gcCustStyle.FieldName = "CustomerStyleNo";
            this.gcCustStyle.Name = "gcCustStyle";
            this.gcCustStyle.Visible = true;
            this.gcCustStyle.VisibleIndex = 4;
            this.gcCustStyle.Width = 145;
            // 
            // gcExtDate
            // 
            this.gcExtDate.Caption = "離廠日期";
            this.gcExtDate.FieldName = "exitdate";
            this.gcExtDate.Name = "gcExtDate";
            this.gcExtDate.Visible = true;
            this.gcExtDate.VisibleIndex = 5;
            this.gcExtDate.Width = 574;
            // 
            // glueWO
            // 
            this.glueWO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkOrderNo", true));
            this.glueWO.EditValue = "";
            this.glueWO.Location = new System.Drawing.Point(527, 74);
            this.glueWO.Name = "glueWO";
            this.glueWO.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.glueWO.Properties.NullText = "";
            this.glueWO.Properties.PopupFormMinSize = new System.Drawing.Size(600, 0);
            this.glueWO.Properties.View = this.workOrderGridLookUpEditView;
            this.glueWO.Size = new System.Drawing.Size(133, 21);
            this.glueWO.TabIndex = 9;
            this.glueWO.EditValueChanged += new System.EventHandler(this.glueWO_EditValueChanged);
            this.glueWO.KeyDown += new System.Windows.Forms.KeyEventHandler(this.glueWO_KeyDown);
            // 
            // edtFac
            // 
            this.edtFac.Enabled = false;
            this.edtFac.Location = new System.Drawing.Point(157, 132);
            this.edtFac.Name = "edtFac";
            this.edtFac.Size = new System.Drawing.Size(76, 21);
            this.edtFac.TabIndex = 11;
            // 
            // edtStyle
            // 
            this.edtStyle.Enabled = false;
            this.edtStyle.Location = new System.Drawing.Point(346, 130);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Size = new System.Drawing.Size(108, 21);
            this.edtStyle.TabIndex = 13;
            // 
            // edtCStyle
            // 
            this.edtCStyle.Enabled = false;
            this.edtCStyle.Location = new System.Drawing.Point(527, 130);
            this.edtCStyle.Name = "edtCStyle";
            this.edtCStyle.Size = new System.Drawing.Size(133, 21);
            this.edtCStyle.TabIndex = 15;
            // 
            // edtProj
            // 
            this.edtProj.Enabled = false;
            this.edtProj.Location = new System.Drawing.Point(157, 200);
            this.edtProj.Name = "edtProj";
            this.edtProj.Size = new System.Drawing.Size(100, 21);
            this.edtProj.TabIndex = 17;
            // 
            // edtExDate
            // 
            this.edtExDate.Enabled = false;
            this.edtExDate.Location = new System.Drawing.Point(346, 200);
            this.edtExDate.Name = "edtExDate";
            this.edtExDate.Size = new System.Drawing.Size(188, 21);
            this.edtExDate.TabIndex = 19;
            // 
            // AmendWoDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(exitDateLabel);
            this.Controls.Add(this.edtExDate);
            this.Controls.Add(projectLabel);
            this.Controls.Add(this.edtProj);
            this.Controls.Add(custStyleLabel);
            this.Controls.Add(this.edtCStyle);
            this.Controls.Add(phStyleNoLabel);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(factoryLabel);
            this.Controls.Add(this.edtFac);
            this.Controls.Add(workOrderLabel);
            this.Controls.Add(this.glueWO);
            this.Controls.Add(verIdLabel);
            this.Controls.Add(this.verIdTextEdit);
            this.Controls.Add(amendNoLabel);
            this.Controls.Add(this.amendNoTextEdit);
            this.Name = "AmendWoDetail";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.amendNoTextEdit, 0);
            this.Controls.SetChildIndex(amendNoLabel, 0);
            this.Controls.SetChildIndex(this.verIdTextEdit, 0);
            this.Controls.SetChildIndex(verIdLabel, 0);
            this.Controls.SetChildIndex(this.glueWO, 0);
            this.Controls.SetChildIndex(workOrderLabel, 0);
            this.Controls.SetChildIndex(this.edtFac, 0);
            this.Controls.SetChildIndex(factoryLabel, 0);
            this.Controls.SetChildIndex(this.edtStyle, 0);
            this.Controls.SetChildIndex(phStyleNoLabel, 0);
            this.Controls.SetChildIndex(this.edtCStyle, 0);
            this.Controls.SetChildIndex(custStyleLabel, 0);
            this.Controls.SetChildIndex(this.edtProj, 0);
            this.Controls.SetChildIndex(projectLabel, 0);
            this.Controls.SetChildIndex(this.edtExDate, 0);
            this.Controls.SetChildIndex(exitDateLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.amendNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.verIdTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.workOrderGridLookUpEditView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.glueWO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtFac.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtProj.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtExDate.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit amendNoTextEdit;
        private DevExpress.XtraEditors.TextEdit verIdTextEdit;
        private DevExpress.XtraGrid.Views.Grid.GridView workOrderGridLookUpEditView;
        private DevExpress.XtraEditors.GridLookUpEdit glueWO;
        private DevExpress.XtraEditors.TextEdit edtFac;
        private DevExpress.XtraEditors.TextEdit edtStyle;
        private DevExpress.XtraEditors.TextEdit edtCStyle;
        private DevExpress.XtraEditors.TextEdit edtProj;
        private DevExpress.XtraEditors.TextEdit edtExDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcFac;
        private DevExpress.XtraGrid.Columns.GridColumn gcProj;
        private DevExpress.XtraGrid.Columns.GridColumn gcWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcPhstyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcExtDate;
    }
}
