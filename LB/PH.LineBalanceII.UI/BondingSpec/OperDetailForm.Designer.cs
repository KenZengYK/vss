namespace PH.LineBalanceII.UI.BondingSpect
{
    partial class OperDetailForm
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
            System.Windows.Forms.Label operNoLabel;
            System.Windows.Forms.Label operNameLabel;
            System.Windows.Forms.Label createByLabel;
            System.Windows.Forms.Label groupNoLabel;
            System.Windows.Forms.Label createTimeLabel;
            System.Windows.Forms.Label updateByLabel;
            System.Windows.Forms.Label updateTimeLabel;
            System.Windows.Forms.Label label1;
            this.edtOperNo = new DevExpress.XtraEditors.TextEdit();
            this.edtOperName = new DevExpress.XtraEditors.TextEdit();
            this.edtCreateBy = new DevExpress.XtraEditors.TextEdit();
            this.edtGroupNo = new DevExpress.XtraEditors.TextEdit();
            this.deCreateTime = new DevExpress.XtraEditors.DateEdit();
            this.edtUpdateBy = new DevExpress.XtraEditors.TextEdit();
            this.deUpdateTime = new DevExpress.XtraEditors.DateEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            operNoLabel = new System.Windows.Forms.Label();
            operNameLabel = new System.Windows.Forms.Label();
            createByLabel = new System.Windows.Forms.Label();
            groupNoLabel = new System.Windows.Forms.Label();
            createTimeLabel = new System.Windows.Forms.Label();
            updateByLabel = new System.Windows.Forms.Label();
            updateTimeLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOperNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOperName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateBy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtGroupNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateBy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.BondingOper);
            // 
            // operNoLabel
            // 
            operNoLabel.AutoSize = true;
            operNoLabel.Location = new System.Drawing.Point(113, 79);
            operNoLabel.Name = "operNoLabel";
            operNoLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(operNoLabel, null);
            operNoLabel.TabIndex = 4;
            operNoLabel.Text = "工序代號";
            // 
            // operNameLabel
            // 
            operNameLabel.AutoSize = true;
            operNameLabel.Location = new System.Drawing.Point(81, 114);
            operNameLabel.Name = "operNameLabel";
            operNameLabel.Size = new System.Drawing.Size(85, 12);
            this.PlatetoolTipController.SetSuperTip(operNameLabel, null);
            operNameLabel.TabIndex = 6;
            operNameLabel.Text = "工序名稱(中文)";
            // 
            // createByLabel
            // 
            createByLabel.AutoSize = true;
            createByLabel.Location = new System.Drawing.Point(125, 196);
            createByLabel.Name = "createByLabel";
            createByLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(createByLabel, null);
            createByLabel.TabIndex = 8;
            createByLabel.Text = "建立者";
            // 
            // groupNoLabel
            // 
            groupNoLabel.AutoSize = true;
            groupNoLabel.Location = new System.Drawing.Point(221, 310);
            groupNoLabel.Name = "groupNoLabel";
            groupNoLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(groupNoLabel, null);
            groupNoLabel.TabIndex = 10;
            groupNoLabel.Text = "組別";
            groupNoLabel.Visible = false;
            // 
            // createTimeLabel
            // 
            createTimeLabel.AutoSize = true;
            createTimeLabel.Location = new System.Drawing.Point(374, 196);
            createTimeLabel.Name = "createTimeLabel";
            createTimeLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(createTimeLabel, null);
            createTimeLabel.TabIndex = 12;
            createTimeLabel.Text = "建立時間";
            // 
            // updateByLabel
            // 
            updateByLabel.AutoSize = true;
            updateByLabel.Location = new System.Drawing.Point(125, 240);
            updateByLabel.Name = "updateByLabel";
            updateByLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(updateByLabel, null);
            updateByLabel.TabIndex = 14;
            updateByLabel.Text = "修改者";
            // 
            // updateTimeLabel
            // 
            updateTimeLabel.AutoSize = true;
            updateTimeLabel.Location = new System.Drawing.Point(374, 240);
            updateTimeLabel.Name = "updateTimeLabel";
            updateTimeLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(updateTimeLabel, null);
            updateTimeLabel.TabIndex = 16;
            updateTimeLabel.Text = "修改時間";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(81, 143);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(85, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 18;
            label1.Text = "工序名稱(英文)";
            // 
            // edtOperNo
            // 
            this.edtOperNo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OperNo", true));
            this.edtOperNo.Location = new System.Drawing.Point(172, 76);
            this.edtOperNo.Name = "edtOperNo";
            this.edtOperNo.Size = new System.Drawing.Size(100, 21);
            this.edtOperNo.TabIndex = 5;
            // 
            // edtOperName
            // 
            this.edtOperName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OperName", true));
            this.edtOperName.Location = new System.Drawing.Point(172, 111);
            this.edtOperName.Name = "edtOperName";
            this.edtOperName.Size = new System.Drawing.Size(397, 21);
            this.edtOperName.TabIndex = 7;
            // 
            // edtCreateBy
            // 
            this.edtCreateBy.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateBy", true));
            this.edtCreateBy.Location = new System.Drawing.Point(172, 193);
            this.edtCreateBy.Name = "edtCreateBy";
            this.edtCreateBy.Size = new System.Drawing.Size(100, 21);
            this.edtCreateBy.TabIndex = 9;
            // 
            // edtGroupNo
            // 
            this.edtGroupNo.Location = new System.Drawing.Point(256, 305);
            this.edtGroupNo.Name = "edtGroupNo";
            this.edtGroupNo.Size = new System.Drawing.Size(136, 21);
            this.edtGroupNo.TabIndex = 11;
            this.edtGroupNo.Visible = false;
            // 
            // deCreateTime
            // 
            this.deCreateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateTime", true));
            this.deCreateTime.EditValue = null;
            this.deCreateTime.Location = new System.Drawing.Point(433, 193);
            this.deCreateTime.Name = "deCreateTime";
            this.deCreateTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deCreateTime.Properties.DisplayFormat.FormatString = "YYYY-MM-dd HH:mm:ss";
            this.deCreateTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deCreateTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deCreateTime.Size = new System.Drawing.Size(136, 21);
            this.deCreateTime.TabIndex = 13;
            // 
            // edtUpdateBy
            // 
            this.edtUpdateBy.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateBy", true));
            this.edtUpdateBy.Location = new System.Drawing.Point(172, 235);
            this.edtUpdateBy.Name = "edtUpdateBy";
            this.edtUpdateBy.Size = new System.Drawing.Size(100, 21);
            this.edtUpdateBy.TabIndex = 15;
            // 
            // deUpdateTime
            // 
            this.deUpdateTime.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UpdateTime", true));
            this.deUpdateTime.EditValue = null;
            this.deUpdateTime.Location = new System.Drawing.Point(433, 235);
            this.deUpdateTime.Name = "deUpdateTime";
            this.deUpdateTime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deUpdateTime.Properties.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm:ss";
            this.deUpdateTime.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.deUpdateTime.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deUpdateTime.Size = new System.Drawing.Size(136, 21);
            this.deUpdateTime.TabIndex = 17;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OperNameEN", true));
            this.memoEdit1.Location = new System.Drawing.Point(172, 142);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(397, 40);
            this.memoEdit1.TabIndex = 19;
            // 
            // OperDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(label1);
            this.Controls.Add(updateTimeLabel);
            this.Controls.Add(this.deUpdateTime);
            this.Controls.Add(updateByLabel);
            this.Controls.Add(this.edtUpdateBy);
            this.Controls.Add(createTimeLabel);
            this.Controls.Add(this.deCreateTime);
            this.Controls.Add(groupNoLabel);
            this.Controls.Add(this.edtGroupNo);
            this.Controls.Add(createByLabel);
            this.Controls.Add(this.edtCreateBy);
            this.Controls.Add(operNameLabel);
            this.Controls.Add(this.edtOperName);
            this.Controls.Add(operNoLabel);
            this.Controls.Add(this.edtOperNo);
            this.Name = "OperDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.edtOperNo, 0);
            this.Controls.SetChildIndex(operNoLabel, 0);
            this.Controls.SetChildIndex(this.edtOperName, 0);
            this.Controls.SetChildIndex(operNameLabel, 0);
            this.Controls.SetChildIndex(this.edtCreateBy, 0);
            this.Controls.SetChildIndex(createByLabel, 0);
            this.Controls.SetChildIndex(this.edtGroupNo, 0);
            this.Controls.SetChildIndex(groupNoLabel, 0);
            this.Controls.SetChildIndex(this.deCreateTime, 0);
            this.Controls.SetChildIndex(createTimeLabel, 0);
            this.Controls.SetChildIndex(this.edtUpdateBy, 0);
            this.Controls.SetChildIndex(updateByLabel, 0);
            this.Controls.SetChildIndex(this.deUpdateTime, 0);
            this.Controls.SetChildIndex(updateTimeLabel, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOperNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtOperName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtCreateBy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtGroupNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deCreateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtUpdateBy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deUpdateTime.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtOperNo;
        private DevExpress.XtraEditors.TextEdit edtOperName;
        private DevExpress.XtraEditors.TextEdit edtCreateBy;
        private DevExpress.XtraEditors.TextEdit edtGroupNo;
        private DevExpress.XtraEditors.DateEdit deCreateTime;
        private DevExpress.XtraEditors.TextEdit edtUpdateBy;
        private DevExpress.XtraEditors.DateEdit deUpdateTime;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
    }
}
