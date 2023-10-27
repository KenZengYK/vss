namespace PH.MIDc.UI
{
    partial class CommonOutGridCtrl
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
            this.gCtrlPrice = new DevExpress.XtraGrid.GridControl();
            this.gViewPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.Currencylabel = new DevExpress.XtraEditors.LabelControl();
            this.lblCurrencyCaption = new DevExpress.XtraEditors.LabelControl();
            this.sBtnShowHideRatio = new DevExpress.XtraEditors.SimpleButton();
            this.dateEdit_EffectEndDate = new DevExpress.XtraEditors.DateEdit();
            this.dateEdit_EffectStartDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl16 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl15 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.gCtrlPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gViewPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // gCtrlPrice
            // 
            this.gCtrlPrice.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gCtrlPrice.EmbeddedNavigator.Name = "";
            this.gCtrlPrice.Location = new System.Drawing.Point(0, 39);
            this.gCtrlPrice.MainView = this.gViewPrice;
            this.gCtrlPrice.Name = "gCtrlPrice";
            this.gCtrlPrice.Size = new System.Drawing.Size(695, 344);
            this.gCtrlPrice.TabIndex = 0;
            this.gCtrlPrice.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gViewPrice});
            // 
            // gViewPrice
            // 
            this.gViewPrice.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.gViewPrice.GridControl = this.gCtrlPrice;
            this.gViewPrice.Name = "gViewPrice";
            this.gViewPrice.OptionsCustomization.AllowFilter = false;
            this.gViewPrice.OptionsCustomization.AllowSort = false;
            this.gViewPrice.OptionsNavigation.EnterMoveNextColumn = true;
            this.gViewPrice.OptionsView.ShowGroupPanel = false;
            this.gViewPrice.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.gViewPrice_CellValueChanged);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "gridBand1";
            this.gridBand1.Name = "gridBand1";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.Currencylabel);
            this.panelControl1.Controls.Add(this.lblCurrencyCaption);
            this.panelControl1.Controls.Add(this.sBtnShowHideRatio);
            this.panelControl1.Controls.Add(this.dateEdit_EffectEndDate);
            this.panelControl1.Controls.Add(this.dateEdit_EffectStartDate);
            this.panelControl1.Controls.Add(this.labelControl16);
            this.panelControl1.Controls.Add(this.labelControl15);
            this.panelControl1.Controls.Add(this.labelControl11);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(695, 39);
            this.panelControl1.TabIndex = 1;
            // 
            // Currencylabel
            // 
            this.Currencylabel.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.Currencylabel.Appearance.Options.UseFont = true;
            this.Currencylabel.Location = new System.Drawing.Point(465, 14);
            this.Currencylabel.Name = "Currencylabel";
            this.Currencylabel.Size = new System.Drawing.Size(0, 14);
            this.Currencylabel.TabIndex = 11;
            this.Currencylabel.Visible = false;
            // 
            // lblCurrencyCaption
            // 
            this.lblCurrencyCaption.Location = new System.Drawing.Point(407, 14);
            this.lblCurrencyCaption.Name = "lblCurrencyCaption";
            this.lblCurrencyCaption.Size = new System.Drawing.Size(52, 14);
            this.lblCurrencyCaption.TabIndex = 10;
            this.lblCurrencyCaption.Text = "Currency:";
            this.lblCurrencyCaption.Visible = false;
            // 
            // sBtnShowHideRatio
            // 
            this.sBtnShowHideRatio.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtnShowHideRatio.Location = new System.Drawing.Point(604, 9);
            this.sBtnShowHideRatio.Name = "sBtnShowHideRatio";
            this.sBtnShowHideRatio.Size = new System.Drawing.Size(75, 23);
            this.sBtnShowHideRatio.TabIndex = 7;
            this.sBtnShowHideRatio.Text = "Show Ratio";
            this.sBtnShowHideRatio.Click += new System.EventHandler(this.sBtnShowHideRatio_Click);
            // 
            // dateEdit_EffectEndDate
            // 
            this.dateEdit_EffectEndDate.AllowDrop = true;
            this.dateEdit_EffectEndDate.EditValue = null;
            this.dateEdit_EffectEndDate.Location = new System.Drawing.Point(281, 11);
            this.dateEdit_EffectEndDate.Name = "dateEdit_EffectEndDate";
            this.dateEdit_EffectEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_EffectEndDate.Properties.NullText = "N.A.";
            this.dateEdit_EffectEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_EffectEndDate.Size = new System.Drawing.Size(100, 21);
            this.dateEdit_EffectEndDate.TabIndex = 5;
            this.dateEdit_EffectEndDate.Tag = "";
            this.dateEdit_EffectEndDate.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.dateEdit_EffectEndDate_EditValueChanging);
            // 
            // dateEdit_EffectStartDate
            // 
            this.dateEdit_EffectStartDate.AllowDrop = true;
            this.dateEdit_EffectStartDate.EditValue = null;
            this.dateEdit_EffectStartDate.Location = new System.Drawing.Point(140, 11);
            this.dateEdit_EffectStartDate.Name = "dateEdit_EffectStartDate";
            this.dateEdit_EffectStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_EffectStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_EffectStartDate.Size = new System.Drawing.Size(100, 21);
            this.dateEdit_EffectStartDate.TabIndex = 6;
            this.dateEdit_EffectStartDate.Tag = "";
            this.dateEdit_EffectStartDate.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.dateEdit_EffectStartDate_EditValueChanging);
            // 
            // labelControl16
            // 
            this.labelControl16.Location = new System.Drawing.Point(253, 14);
            this.labelControl16.Name = "labelControl16";
            this.labelControl16.Size = new System.Drawing.Size(15, 14);
            this.labelControl16.TabIndex = 4;
            this.labelControl16.Text = "To";
            // 
            // labelControl15
            // 
            this.labelControl15.Location = new System.Drawing.Point(107, 14);
            this.labelControl15.Name = "labelControl15";
            this.labelControl15.Size = new System.Drawing.Size(27, 14);
            this.labelControl15.TabIndex = 3;
            this.labelControl15.Text = "From";
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(15, 14);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(85, 14);
            this.labelControl11.TabIndex = 2;
            this.labelControl11.Text = "Validation date:";
            // 
            // CommonOutGridCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gCtrlPrice);
            this.Controls.Add(this.panelControl1);
            this.Name = "CommonOutGridCtrl";
            this.Size = new System.Drawing.Size(695, 383);
            this.Load += new System.EventHandler(this.CommonGridCtrl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gCtrlPrice)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gViewPrice)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.DateEdit dateEdit_EffectEndDate;
        private DevExpress.XtraEditors.DateEdit dateEdit_EffectStartDate;
        private DevExpress.XtraEditors.LabelControl labelControl16;
        private DevExpress.XtraEditors.LabelControl labelControl15;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.SimpleButton sBtnShowHideRatio;
        public DevExpress.XtraGrid.GridControl gCtrlPrice;
        public DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gViewPrice;
        private DevExpress.XtraEditors.LabelControl Currencylabel;
        private DevExpress.XtraEditors.LabelControl lblCurrencyCaption;
    }
}
