namespace PH.MIDc.UI
{
    partial class CommonGridForSinglePriceCtrl
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
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.sBtnShowHideRatio = new DevExpress.XtraEditors.SimpleButton();
            this.Currencylabel = new DevExpress.XtraEditors.LabelControl();
            this.lblCurrencyCaption = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit_EffectEndDate = new DevExpress.XtraEditors.DateEdit();
            this.dateEdit_EffectStartDate = new DevExpress.XtraEditors.DateEdit();
            this.labelControl16 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl15 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl11 = new DevExpress.XtraEditors.LabelControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.lblWavPrice = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.riteRatio = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.gCtrlPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gViewPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectEndDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit_EffectStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.riteRatio)).BeginInit();
            this.SuspendLayout();
            // 
            // gCtrlPrice
            // 
            this.gCtrlPrice.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gCtrlPrice.EmbeddedNavigator.Name = "";
            this.gCtrlPrice.Location = new System.Drawing.Point(0, 26);
            this.gCtrlPrice.MainView = this.gViewPrice;
            this.gCtrlPrice.Name = "gCtrlPrice";
            this.gCtrlPrice.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riteRatio});
            this.gCtrlPrice.Size = new System.Drawing.Size(695, 330);
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
            this.gViewPrice.OptionsBehavior.Editable = false;
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
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.sBtnShowHideRatio);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(695, 26);
            this.panelControl1.TabIndex = 1;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(209, 6);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(55, 14);
            this.labelControl2.TabIndex = 5;
            this.labelControl2.Text = "R = Ratio ";
            // 
            // sBtnShowHideRatio
            // 
            this.sBtnShowHideRatio.Location = new System.Drawing.Point(30, 2);
            this.sBtnShowHideRatio.Name = "sBtnShowHideRatio";
            this.sBtnShowHideRatio.Size = new System.Drawing.Size(75, 22);
            this.sBtnShowHideRatio.TabIndex = 7;
            this.sBtnShowHideRatio.Text = "Hide Ratio";
            this.sBtnShowHideRatio.Click += new System.EventHandler(this.sBtnShowHideRatio_Click);
            // 
            // Currencylabel
            // 
            this.Currencylabel.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.Currencylabel.Appearance.Options.UseFont = true;
            this.Currencylabel.Location = new System.Drawing.Point(582, 6);
            this.Currencylabel.Name = "Currencylabel";
            this.Currencylabel.Size = new System.Drawing.Size(0, 14);
            this.Currencylabel.TabIndex = 9;
            this.Currencylabel.Visible = false;
            // 
            // lblCurrencyCaption
            // 
            this.lblCurrencyCaption.Location = new System.Drawing.Point(582, 6);
            this.lblCurrencyCaption.Name = "lblCurrencyCaption";
            this.lblCurrencyCaption.Size = new System.Drawing.Size(52, 14);
            this.lblCurrencyCaption.TabIndex = 8;
            this.lblCurrencyCaption.Text = "Currency:";
            this.lblCurrencyCaption.Visible = false;
            // 
            // dateEdit_EffectEndDate
            // 
            this.dateEdit_EffectEndDate.AllowDrop = true;
            this.dateEdit_EffectEndDate.EditValue = null;
            this.dateEdit_EffectEndDate.Location = new System.Drawing.Point(463, 3);
            this.dateEdit_EffectEndDate.Name = "dateEdit_EffectEndDate";
            this.dateEdit_EffectEndDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_EffectEndDate.Properties.NullText = "N.A.";
            this.dateEdit_EffectEndDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_EffectEndDate.Size = new System.Drawing.Size(100, 21);
            this.dateEdit_EffectEndDate.TabIndex = 5;
            this.dateEdit_EffectEndDate.Tag = "";
            this.dateEdit_EffectEndDate.Visible = false;
            // 
            // dateEdit_EffectStartDate
            // 
            this.dateEdit_EffectStartDate.AllowDrop = true;
            this.dateEdit_EffectStartDate.EditValue = null;
            this.dateEdit_EffectStartDate.Location = new System.Drawing.Point(322, 3);
            this.dateEdit_EffectStartDate.Name = "dateEdit_EffectStartDate";
            this.dateEdit_EffectStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit_EffectStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit_EffectStartDate.Size = new System.Drawing.Size(100, 21);
            this.dateEdit_EffectStartDate.TabIndex = 6;
            this.dateEdit_EffectStartDate.Tag = "";
            this.dateEdit_EffectStartDate.Visible = false;
            // 
            // labelControl16
            // 
            this.labelControl16.Location = new System.Drawing.Point(435, 6);
            this.labelControl16.Name = "labelControl16";
            this.labelControl16.Size = new System.Drawing.Size(15, 14);
            this.labelControl16.TabIndex = 4;
            this.labelControl16.Text = "To";
            this.labelControl16.Visible = false;
            // 
            // labelControl15
            // 
            this.labelControl15.Location = new System.Drawing.Point(289, 6);
            this.labelControl15.Name = "labelControl15";
            this.labelControl15.Size = new System.Drawing.Size(27, 14);
            this.labelControl15.TabIndex = 3;
            this.labelControl15.Text = "From";
            this.labelControl15.Visible = false;
            // 
            // labelControl11
            // 
            this.labelControl11.Location = new System.Drawing.Point(197, 6);
            this.labelControl11.Name = "labelControl11";
            this.labelControl11.Size = new System.Drawing.Size(85, 14);
            this.labelControl11.TabIndex = 2;
            this.labelControl11.Text = "Validation date:";
            this.labelControl11.Visible = false;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.lblWavPrice);
            this.panelControl2.Controls.Add(this.Currencylabel);
            this.panelControl2.Controls.Add(this.labelControl1);
            this.panelControl2.Controls.Add(this.lblCurrencyCaption);
            this.panelControl2.Controls.Add(this.labelControl11);
            this.panelControl2.Controls.Add(this.dateEdit_EffectEndDate);
            this.panelControl2.Controls.Add(this.labelControl15);
            this.panelControl2.Controls.Add(this.dateEdit_EffectStartDate);
            this.panelControl2.Controls.Add(this.labelControl16);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelControl2.Location = new System.Drawing.Point(0, 356);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(695, 27);
            this.panelControl2.TabIndex = 2;
            this.panelControl2.Visible = false;
            // 
            // lblWavPrice
            // 
            this.lblWavPrice.Appearance.ForeColor = System.Drawing.Color.Blue;
            this.lblWavPrice.Appearance.Options.UseForeColor = true;
            this.lblWavPrice.Location = new System.Drawing.Point(112, 6);
            this.lblWavPrice.Name = "lblWavPrice";
            this.lblWavPrice.Size = new System.Drawing.Size(0, 14);
            this.lblWavPrice.TabIndex = 4;
            this.lblWavPrice.Visible = false;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(15, 6);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(76, 14);
            this.labelControl1.TabIndex = 3;
            this.labelControl1.Text = "W/Ave price :";
            this.labelControl1.Visible = false;
            // 
            // riteRatio
            // 
            this.riteRatio.AutoHeight = false;
            this.riteRatio.MaxLength = 2;
            this.riteRatio.Name = "riteRatio";
            // 
            // CommonGridForSinglePriceCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.gCtrlPrice);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panelControl2);
            this.Name = "CommonGridForSinglePriceCtrl";
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
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.panelControl2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.riteRatio)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gCtrlPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gViewPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.DateEdit dateEdit_EffectEndDate;
        private DevExpress.XtraEditors.DateEdit dateEdit_EffectStartDate;
        private DevExpress.XtraEditors.LabelControl labelControl16;
        private DevExpress.XtraEditors.LabelControl labelControl15;
        private DevExpress.XtraEditors.LabelControl labelControl11;
        private DevExpress.XtraEditors.SimpleButton sBtnShowHideRatio;
        private DevExpress.XtraEditors.LabelControl lblCurrencyCaption;
        private DevExpress.XtraEditors.LabelControl Currencylabel;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.LabelControl lblWavPrice;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit riteRatio;
    }
}
