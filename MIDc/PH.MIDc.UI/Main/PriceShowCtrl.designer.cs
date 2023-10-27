namespace PH.MIDc.UI
{
    partial class PriceShowCtrl
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
            DevExpress.Utils.SuperToolTip superToolTip3 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem5 = new DevExpress.Utils.ToolTipTitleItem();
            DevExpress.Utils.ToolTipItem toolTipItem3 = new DevExpress.Utils.ToolTipItem();
            DevExpress.Utils.ToolTipSeparatorItem toolTipSeparatorItem3 = new DevExpress.Utils.ToolTipSeparatorItem();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem6 = new DevExpress.Utils.ToolTipTitleItem();
            DevExpress.Utils.SuperToolTip superToolTip1 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem1 = new DevExpress.Utils.ToolTipTitleItem();
            DevExpress.Utils.ToolTipItem toolTipItem1 = new DevExpress.Utils.ToolTipItem();
            DevExpress.Utils.ToolTipSeparatorItem toolTipSeparatorItem1 = new DevExpress.Utils.ToolTipSeparatorItem();
            DevExpress.Utils.ToolTipTitleItem toolTipTitleItem2 = new DevExpress.Utils.ToolTipTitleItem();
            this.sBtnAdd = new DevExpress.XtraEditors.SimpleButton();
            this.sBtnDel = new DevExpress.XtraEditors.SimpleButton();
            this.comboBoxEditHistoryItem = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.lblPriceStateNote = new DevExpress.XtraEditors.LabelControl();
            this.panelCtrl_Btn = new DevExpress.XtraEditors.PanelControl();
            this.sBtnEdit = new DevExpress.XtraEditors.SimpleButton();
            this.panelCtr_PriceShow = new DevExpress.XtraEditors.PanelControl();
            this.lblSupplierUnit = new System.Windows.Forms.Label();
            this.AllInPrice_Supplierlabel = new System.Windows.Forms.Label();
            this.panelCtr_SumMsg = new DevExpress.XtraEditors.PanelControl();
            this.spinEdit_AllInPriceSupplier = new DevExpress.XtraEditors.SpinEdit();
            this.lblPHUnit = new System.Windows.Forms.Label();
            this.AllInPricelabel = new System.Windows.Forms.Label();
            this.editPrice = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEditHistoryItem.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelCtrl_Btn)).BeginInit();
            this.panelCtrl_Btn.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelCtr_PriceShow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelCtr_SumMsg)).BeginInit();
            this.panelCtr_SumMsg.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_AllInPriceSupplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrice.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sBtnAdd
            // 
            this.sBtnAdd.Location = new System.Drawing.Point(3, 0);
            this.sBtnAdd.Name = "sBtnAdd";
            this.sBtnAdd.Size = new System.Drawing.Size(52, 22);
            this.sBtnAdd.TabIndex = 20;
            this.sBtnAdd.Text = "Add";
            this.sBtnAdd.Click += new System.EventHandler(this.sBtnAdd_Click);
            // 
            // sBtnDel
            // 
            this.sBtnDel.Location = new System.Drawing.Point(107, 0);
            this.sBtnDel.Name = "sBtnDel";
            this.sBtnDel.Size = new System.Drawing.Size(50, 22);
            this.sBtnDel.TabIndex = 21;
            this.sBtnDel.Text = "Delete";
            this.sBtnDel.Click += new System.EventHandler(this.sBtnDel_Click);
            // 
            // comboBoxEditHistoryItem
            // 
            this.comboBoxEditHistoryItem.Location = new System.Drawing.Point(82, 2);
            this.comboBoxEditHistoryItem.Name = "comboBoxEditHistoryItem";
            this.comboBoxEditHistoryItem.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEditHistoryItem.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEditHistoryItem.Size = new System.Drawing.Size(180, 21);
            this.comboBoxEditHistoryItem.TabIndex = 18;
            this.comboBoxEditHistoryItem.SelectedIndexChanged += new System.EventHandler(this.comboBoxEditHistoryItem_SelectedValueChanged);
            this.comboBoxEditHistoryItem.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.comboBoxEditHistoryItem_EditValueChanging);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(7, 5);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(74, 14);
            this.labelControl3.TabIndex = 17;
            this.labelControl3.Text = "Choose Item:";
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.lblPriceStateNote);
            this.panelControl1.Controls.Add(this.panelCtrl_Btn);
            this.panelControl1.Controls.Add(this.comboBoxEditHistoryItem);
            this.panelControl1.Controls.Add(this.labelControl3);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(538, 26);
            this.panelControl1.TabIndex = 22;
            // 
            // lblPriceStateNote
            // 
            this.lblPriceStateNote.Appearance.Font = new System.Drawing.Font("Tahoma", 10F, System.Drawing.FontStyle.Bold);
            this.lblPriceStateNote.Appearance.ForeColor = System.Drawing.Color.Red;
            this.lblPriceStateNote.Appearance.Options.UseFont = true;
            this.lblPriceStateNote.Appearance.Options.UseForeColor = true;
            this.lblPriceStateNote.Location = new System.Drawing.Point(428, 5);
            this.lblPriceStateNote.Name = "lblPriceStateNote";
            this.lblPriceStateNote.Size = new System.Drawing.Size(64, 16);
            this.lblPriceStateNote.TabIndex = 23;
            this.lblPriceStateNote.Text = "單價過期";
            // 
            // panelCtrl_Btn
            // 
            this.panelCtrl_Btn.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelCtrl_Btn.Controls.Add(this.sBtnEdit);
            this.panelCtrl_Btn.Controls.Add(this.sBtnDel);
            this.panelCtrl_Btn.Controls.Add(this.sBtnAdd);
            this.panelCtrl_Btn.Location = new System.Drawing.Point(268, 1);
            this.panelCtrl_Btn.Name = "panelCtrl_Btn";
            this.panelCtrl_Btn.Size = new System.Drawing.Size(162, 23);
            this.panelCtrl_Btn.TabIndex = 22;
            // 
            // sBtnEdit
            // 
            this.sBtnEdit.Location = new System.Drawing.Point(55, 0);
            this.sBtnEdit.Name = "sBtnEdit";
            this.sBtnEdit.Size = new System.Drawing.Size(51, 22);
            this.sBtnEdit.TabIndex = 21;
            this.sBtnEdit.Text = "Info";
            this.sBtnEdit.Click += new System.EventHandler(this.sBtnEdit_Click);
            // 
            // panelCtr_PriceShow
            // 
            this.panelCtr_PriceShow.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelCtr_PriceShow.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCtr_PriceShow.Location = new System.Drawing.Point(0, 26);
            this.panelCtr_PriceShow.Name = "panelCtr_PriceShow";
            this.panelCtr_PriceShow.Size = new System.Drawing.Size(538, 320);
            this.panelCtr_PriceShow.TabIndex = 23;
            // 
            // lblSupplierUnit
            // 
            this.lblSupplierUnit.Location = new System.Drawing.Point(468, 4);
            this.lblSupplierUnit.Name = "lblSupplierUnit";
            this.lblSupplierUnit.Size = new System.Drawing.Size(23, 16);
            this.lblSupplierUnit.TabIndex = 132;
            this.lblSupplierUnit.Text = "M";
            this.lblSupplierUnit.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // AllInPrice_Supplierlabel
            // 
            this.AllInPrice_Supplierlabel.Location = new System.Drawing.Point(255, 4);
            this.AllInPrice_Supplierlabel.Name = "AllInPrice_Supplierlabel";
            this.AllInPrice_Supplierlabel.Size = new System.Drawing.Size(144, 16);
            this.AllInPrice_Supplierlabel.TabIndex = 131;
            this.AllInPrice_Supplierlabel.Text = "Supp(HK$) - W/Ave(for ref.)";
            this.AllInPrice_Supplierlabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // panelCtr_SumMsg
            // 
            this.panelCtr_SumMsg.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelCtr_SumMsg.Controls.Add(this.spinEdit_AllInPriceSupplier);
            this.panelCtr_SumMsg.Controls.Add(this.lblSupplierUnit);
            this.panelCtr_SumMsg.Controls.Add(this.lblPHUnit);
            this.panelCtr_SumMsg.Controls.Add(this.AllInPrice_Supplierlabel);
            this.panelCtr_SumMsg.Controls.Add(this.AllInPricelabel);
            this.panelCtr_SumMsg.Controls.Add(this.editPrice);
            this.panelCtr_SumMsg.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelCtr_SumMsg.Location = new System.Drawing.Point(0, 346);
            this.panelCtr_SumMsg.Name = "panelCtr_SumMsg";
            this.panelCtr_SumMsg.Size = new System.Drawing.Size(538, 24);
            this.panelCtr_SumMsg.TabIndex = 24;
            // 
            // spinEdit_AllInPriceSupplier
            // 
            this.spinEdit_AllInPriceSupplier.AllowDrop = true;
            this.spinEdit_AllInPriceSupplier.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit_AllInPriceSupplier.Enabled = false;
            this.spinEdit_AllInPriceSupplier.EnterMoveNextControl = true;
            this.spinEdit_AllInPriceSupplier.Location = new System.Drawing.Point(402, 2);
            this.spinEdit_AllInPriceSupplier.Name = "spinEdit_AllInPriceSupplier";
            this.spinEdit_AllInPriceSupplier.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F);
            this.spinEdit_AllInPriceSupplier.Properties.Appearance.ForeColor = System.Drawing.Color.Black;
            this.spinEdit_AllInPriceSupplier.Properties.Appearance.Options.UseFont = true;
            this.spinEdit_AllInPriceSupplier.Properties.Appearance.Options.UseForeColor = true;
            this.spinEdit_AllInPriceSupplier.Properties.DisplayFormat.FormatString = "n4";
            this.spinEdit_AllInPriceSupplier.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spinEdit_AllInPriceSupplier.Properties.EditFormat.FormatString = "#,0.0000";
            this.spinEdit_AllInPriceSupplier.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spinEdit_AllInPriceSupplier.Properties.Mask.EditMask = "n4";
            this.spinEdit_AllInPriceSupplier.Properties.ReadOnly = true;
            this.spinEdit_AllInPriceSupplier.Size = new System.Drawing.Size(58, 20);
            toolTipTitleItem5.Text = "All In Price(Supplier):";
            toolTipItem3.LeftIndent = 6;
            toolTipTitleItem6.LeftIndent = 6;
            toolTipTitleItem6.Text = " = [1+ (C1+C2+C3+C4+C5) / 100 ] * B1 * A";
            superToolTip3.Items.Add(toolTipTitleItem5);
            superToolTip3.Items.Add(toolTipItem3);
            superToolTip3.Items.Add(toolTipSeparatorItem3);
            superToolTip3.Items.Add(toolTipTitleItem6);
            this.spinEdit_AllInPriceSupplier.SuperTip = superToolTip3;
            this.spinEdit_AllInPriceSupplier.TabIndex = 122;
            this.spinEdit_AllInPriceSupplier.Tag = "AllInPrice_Supplier";
            this.spinEdit_AllInPriceSupplier.ToolTipIconType = DevExpress.Utils.ToolTipIconType.Information;
            // 
            // lblPHUnit
            // 
            this.lblPHUnit.Location = new System.Drawing.Point(230, 4);
            this.lblPHUnit.Name = "lblPHUnit";
            this.lblPHUnit.Size = new System.Drawing.Size(23, 16);
            this.lblPHUnit.TabIndex = 133;
            this.lblPHUnit.Text = "M";
            this.lblPHUnit.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // AllInPricelabel
            // 
            this.AllInPricelabel.Location = new System.Drawing.Point(4, 4);
            this.AllInPricelabel.Name = "AllInPricelabel";
            this.AllInPricelabel.Size = new System.Drawing.Size(166, 16);
            this.AllInPricelabel.TabIndex = 130;
            this.AllInPricelabel.Text = "All in Cost:  Buyer(HK$) - W/Ave";
            this.AllInPricelabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // editPrice
            // 
            this.editPrice.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.editPrice.Enabled = false;
            this.editPrice.EnterMoveNextControl = true;
            this.editPrice.Location = new System.Drawing.Point(170, 2);
            this.editPrice.Name = "editPrice";
            this.editPrice.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F);
            this.editPrice.Properties.Appearance.ForeColor = System.Drawing.Color.Red;
            this.editPrice.Properties.Appearance.Options.UseFont = true;
            this.editPrice.Properties.Appearance.Options.UseForeColor = true;
            this.editPrice.Properties.DisplayFormat.FormatString = "n4";
            this.editPrice.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editPrice.Properties.EditFormat.FormatString = "#,0.0000";
            this.editPrice.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.editPrice.Properties.Mask.EditMask = "n4";
            this.editPrice.Properties.ReadOnly = true;
            this.editPrice.Size = new System.Drawing.Size(59, 20);
            toolTipTitleItem1.Text = "AllInPrice(HK$):";
            toolTipItem1.LeftIndent = 6;
            toolTipTitleItem2.LeftIndent = 6;
            toolTipTitleItem2.Text = " = [1+ (C1+C2+C3+C4+C5) / 100 ] * B1 * A  /  R";
            superToolTip1.Items.Add(toolTipTitleItem1);
            superToolTip1.Items.Add(toolTipItem1);
            superToolTip1.Items.Add(toolTipSeparatorItem1);
            superToolTip1.Items.Add(toolTipTitleItem2);
            this.editPrice.SuperTip = superToolTip1;
            this.editPrice.TabIndex = 129;
            this.editPrice.Tag = "AllInPrice";
            this.editPrice.ToolTipIconType = DevExpress.Utils.ToolTipIconType.Information;
            // 
            // PriceShowCtrl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelCtr_PriceShow);
            this.Controls.Add(this.panelCtr_SumMsg);
            this.Controls.Add(this.panelControl1);
            this.Name = "PriceShowCtrl";
            this.Size = new System.Drawing.Size(538, 370);
            this.Load += new System.EventHandler(this.PriceShowCtrl_Load);
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEditHistoryItem.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelCtrl_Btn)).EndInit();
            this.panelCtrl_Btn.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelCtr_PriceShow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelCtr_SumMsg)).EndInit();
            this.panelCtr_SumMsg.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit_AllInPriceSupplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editPrice.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sBtnAdd;
        private DevExpress.XtraEditors.SimpleButton sBtnDel;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEditHistoryItem;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.PanelControl panelCtr_PriceShow;
        private DevExpress.XtraEditors.PanelControl panelCtr_SumMsg;
        private System.Windows.Forms.Label lblSupplierUnit;
        private System.Windows.Forms.Label AllInPrice_Supplierlabel;
        private System.Windows.Forms.Label lblPHUnit;
        private System.Windows.Forms.Label AllInPricelabel;
        private DevExpress.XtraEditors.SpinEdit editPrice;
        private DevExpress.XtraEditors.SpinEdit spinEdit_AllInPriceSupplier;
        private DevExpress.XtraEditors.PanelControl panelCtrl_Btn;
        private DevExpress.XtraEditors.SimpleButton sBtnEdit;
        private DevExpress.XtraEditors.LabelControl lblPriceStateNote;
    }
}
