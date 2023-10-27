namespace PH.HDO.UI.ByPiece
{
    partial class WorkTimeApplicationDetailForm
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
            System.Windows.Forms.Label date_TimeLabel;
            System.Windows.Forms.Label time_QuantumLabel;
            System.Windows.Forms.Label label2;
            System.Windows.Forms.Label label3;
            System.Windows.Forms.Label group_CodeLabel;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule4 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            System.Windows.Forms.Label isAgree_DirectorLabel;
            System.Windows.Forms.Label isAgree_ManagerLabel;
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.departmentTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.reasonTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.work_descTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.baseNumberTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.reasonTextEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.date_TimeDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.amountSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.nameComboBox = new System.Windows.Forms.ComboBox();
            this.numBComboBox = new System.Windows.Forms.ComboBox();
            this.time_QuantumSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.timeEdit1 = new DevExpress.XtraEditors.TimeEdit();
            this.timeEdit2 = new DevExpress.XtraEditors.TimeEdit();
            this.group_CodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.isAgree_DirectorCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isAgree_ManagerCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            date_TimeLabel = new System.Windows.Forms.Label();
            time_QuantumLabel = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            group_CodeLabel = new System.Windows.Forms.Label();
            isAgree_DirectorLabel = new System.Windows.Forms.Label();
            isAgree_ManagerLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.departmentTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reasonTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.work_descTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseNumberTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reasonTextEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_TimeDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_TimeDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.amountSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.time_QuantumSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.group_CodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_DirectorCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ManagerCheckEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPrice_WorkTimeApplication);
            // 
            // date_TimeLabel
            // 
            date_TimeLabel.AutoSize = true;
            date_TimeLabel.Location = new System.Drawing.Point(147, 193);
            date_TimeLabel.Name = "date_TimeLabel";
            date_TimeLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(date_TimeLabel, null);
            date_TimeLabel.TabIndex = 146;
            date_TimeLabel.Text = "日期";
            // 
            // time_QuantumLabel
            // 
            time_QuantumLabel.AutoSize = true;
            time_QuantumLabel.Location = new System.Drawing.Point(147, 275);
            time_QuantumLabel.Name = "time_QuantumLabel";
            time_QuantumLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(time_QuantumLabel, null);
            time_QuantumLabel.TabIndex = 152;
            time_QuantumLabel.Text = "時數";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(147, 220);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 157;
            label2.Text = "開始時段";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(147, 247);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(label3, null);
            label3.TabIndex = 158;
            label3.Text = "結束時段";
            // 
            // group_CodeLabel
            // 
            group_CodeLabel.AutoSize = true;
            group_CodeLabel.Location = new System.Drawing.Point(362, 105);
            group_CodeLabel.Name = "group_CodeLabel";
            group_CodeLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(group_CodeLabel, null);
            group_CodeLabel.TabIndex = 160;
            group_CodeLabel.Text = "組別";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(362, 264);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label6, null);
            this.label6.TabIndex = 118;
            this.label6.Text = "備註";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(147, 110);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 111;
            this.label5.Text = "工號";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(360, 140);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 110;
            this.label4.Text = "工作內容描述";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(149, 136);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 107;
            this.label1.Text = "姓名";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(362, 230);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label8, null);
            this.label8.TabIndex = 122;
            this.label8.Text = "責任部門";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(361, 168);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 132;
            this.label7.Text = "基數";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(360, 196);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(79, 12);
            this.PlatetoolTipController.SetSuperTip(this.label11, null);
            this.label11.TabIndex = 130;
            this.label11.Text = "金額（RMB）";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(147, 167);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label13, null);
            this.label13.TabIndex = 134;
            this.label13.Text = "申請原因";
            // 
            // departmentTextEdit
            // 
            this.departmentTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "department", true));
            this.departmentTextEdit.Location = new System.Drawing.Point(440, 225);
            this.departmentTextEdit.Name = "departmentTextEdit";
            this.departmentTextEdit.Size = new System.Drawing.Size(100, 21);
            this.departmentTextEdit.TabIndex = 142;
            // 
            // reasonTextEdit
            // 
            this.reasonTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Reamrk", true));
            this.reasonTextEdit.Location = new System.Drawing.Point(440, 256);
            this.reasonTextEdit.Name = "reasonTextEdit";
            this.reasonTextEdit.Size = new System.Drawing.Size(100, 21);
            this.reasonTextEdit.TabIndex = 143;
            // 
            // work_descTextEdit
            // 
            this.work_descTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Work_desc", true));
            this.work_descTextEdit.Location = new System.Drawing.Point(440, 135);
            this.work_descTextEdit.Name = "work_descTextEdit";
            this.work_descTextEdit.Size = new System.Drawing.Size(100, 21);
            this.work_descTextEdit.TabIndex = 144;
            // 
            // baseNumberTextEdit
            // 
            this.baseNumberTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BaseNumber", true));
            this.baseNumberTextEdit.Location = new System.Drawing.Point(440, 162);
            this.baseNumberTextEdit.Name = "baseNumberTextEdit";
            this.baseNumberTextEdit.Size = new System.Drawing.Size(100, 21);
            this.baseNumberTextEdit.TabIndex = 145;
            // 
            // reasonTextEdit1
            // 
            this.reasonTextEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Reason", true));
            this.reasonTextEdit1.Location = new System.Drawing.Point(200, 163);
            this.reasonTextEdit1.Name = "reasonTextEdit1";
            this.reasonTextEdit1.Size = new System.Drawing.Size(100, 21);
            this.reasonTextEdit1.TabIndex = 146;
            // 
            // date_TimeDateEdit
            // 
            this.date_TimeDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Date_Time", true));
            this.date_TimeDateEdit.EditValue = new System.DateTime(2018, 8, 9, 11, 40, 49, 878);
            this.date_TimeDateEdit.Location = new System.Drawing.Point(200, 190);
            this.date_TimeDateEdit.Name = "date_TimeDateEdit";
            this.date_TimeDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_TimeDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_TimeDateEdit.Size = new System.Drawing.Size(100, 21);
            this.date_TimeDateEdit.TabIndex = 147;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "This value is not blank";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.date_TimeDateEdit, conditionValidatonRule1);
            // 
            // amountSpinEdit
            // 
            this.amountSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Amount", true));
            this.amountSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.amountSpinEdit.Location = new System.Drawing.Point(440, 193);
            this.amountSpinEdit.Name = "amountSpinEdit";
            this.amountSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.amountSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.amountSpinEdit.TabIndex = 148;
            // 
            // nameComboBox
            // 
            this.nameComboBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Name", true));
            this.nameComboBox.FormattingEnabled = true;
            this.nameComboBox.Location = new System.Drawing.Point(200, 133);
            this.nameComboBox.Name = "nameComboBox";
            this.nameComboBox.Size = new System.Drawing.Size(100, 20);
            this.PlatetoolTipController.SetSuperTip(this.nameComboBox, null);
            this.nameComboBox.TabIndex = 151;
            // 
            // numBComboBox
            // 
            this.numBComboBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "NumB", true));
            this.numBComboBox.FormattingEnabled = true;
            this.numBComboBox.Location = new System.Drawing.Point(200, 102);
            this.numBComboBox.Name = "numBComboBox";
            this.numBComboBox.Size = new System.Drawing.Size(100, 20);
            this.PlatetoolTipController.SetSuperTip(this.numBComboBox, null);
            this.numBComboBox.TabIndex = 152;
            this.numBComboBox.SelectedValueChanged += new System.EventHandler(this.numBComboBox_SelectedValueChanged);
            // 
            // time_QuantumSpinEdit
            // 
            this.time_QuantumSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Time_Quantum", true));
            this.time_QuantumSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.time_QuantumSpinEdit.Location = new System.Drawing.Point(200, 270);
            this.time_QuantumSpinEdit.Name = "time_QuantumSpinEdit";
            this.time_QuantumSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.time_QuantumSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.time_QuantumSpinEdit.TabIndex = 153;
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "This value is not blank";
            conditionValidatonRule2.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Information;
            this.dxValidationProvider.SetValidationRule(this.time_QuantumSpinEdit, conditionValidatonRule2);
            // 
            // timeEdit1
            // 
            this.timeEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Time_Quantum_Start", true));
            this.timeEdit1.EditValue = "12:00:00";
            this.timeEdit1.Location = new System.Drawing.Point(200, 217);
            this.timeEdit1.Name = "timeEdit1";
            this.timeEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeEdit1.Properties.DisplayFormat.FormatString = "HH:mm:ss";
            this.timeEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.timeEdit1.Properties.EditFormat.FormatString = "HH:mm:ss";
            this.timeEdit1.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.timeEdit1.Properties.Mask.EditMask = "HH:mm:ss";
            this.timeEdit1.Size = new System.Drawing.Size(100, 21);
            this.timeEdit1.TabIndex = 159;
            conditionValidatonRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule3.ErrorText = "This value is not blank";
            conditionValidatonRule3.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.timeEdit1, conditionValidatonRule3);
            // 
            // timeEdit2
            // 
            this.timeEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Time_Quantum_Due", true));
            this.timeEdit2.EditValue = "12:00:00";
            this.timeEdit2.Location = new System.Drawing.Point(200, 244);
            this.timeEdit2.Name = "timeEdit2";
            this.timeEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeEdit2.Properties.DisplayFormat.FormatString = "HH:mm:ss";
            this.timeEdit2.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.timeEdit2.Properties.EditFormat.FormatString = "HH:mm:ss";
            this.timeEdit2.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.timeEdit2.Properties.Mask.EditMask = "HH:mm:ss";
            this.timeEdit2.Size = new System.Drawing.Size(100, 21);
            this.timeEdit2.TabIndex = 160;
            conditionValidatonRule4.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule4.ErrorText = "This value is not blank";
            conditionValidatonRule4.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.timeEdit2, conditionValidatonRule4);
            // 
            // group_CodeTextEdit
            // 
            this.group_CodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Group_Code", true));
            this.group_CodeTextEdit.Location = new System.Drawing.Point(440, 101);
            this.group_CodeTextEdit.Name = "group_CodeTextEdit";
            this.group_CodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.group_CodeTextEdit.TabIndex = 161;
            // 
            // isAgree_DirectorLabel
            // 
            isAgree_DirectorLabel.AutoSize = true;
            isAgree_DirectorLabel.Location = new System.Drawing.Point(146, 325);
            isAgree_DirectorLabel.Name = "isAgree_DirectorLabel";
            isAgree_DirectorLabel.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(isAgree_DirectorLabel, null);
            isAgree_DirectorLabel.TabIndex = 161;
            isAgree_DirectorLabel.Text = "主管審批:";
            // 
            // isAgree_DirectorCheckEdit
            // 
            this.isAgree_DirectorCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAgree_Director", true));
            this.isAgree_DirectorCheckEdit.Location = new System.Drawing.Point(203, 321);
            this.isAgree_DirectorCheckEdit.Name = "isAgree_DirectorCheckEdit";
            this.isAgree_DirectorCheckEdit.Properties.Caption = "";
            this.isAgree_DirectorCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAgree_DirectorCheckEdit.TabIndex = 162;
            // 
            // isAgree_ManagerLabel
            // 
            isAgree_ManagerLabel.AutoSize = true;
            isAgree_ManagerLabel.Location = new System.Drawing.Point(369, 328);
            isAgree_ManagerLabel.Name = "isAgree_ManagerLabel";
            isAgree_ManagerLabel.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(isAgree_ManagerLabel, null);
            isAgree_ManagerLabel.TabIndex = 162;
            isAgree_ManagerLabel.Text = "經理審批:";
            // 
            // isAgree_ManagerCheckEdit
            // 
            this.isAgree_ManagerCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAgree_Manager", true));
            this.isAgree_ManagerCheckEdit.Location = new System.Drawing.Point(439, 323);
            this.isAgree_ManagerCheckEdit.Name = "isAgree_ManagerCheckEdit";
            this.isAgree_ManagerCheckEdit.Properties.Caption = "";
            this.isAgree_ManagerCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAgree_ManagerCheckEdit.TabIndex = 163;
            // 
            // WorkTimeApplicationDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(isAgree_ManagerLabel);
            this.Controls.Add(this.isAgree_ManagerCheckEdit);
            this.Controls.Add(isAgree_DirectorLabel);
            this.Controls.Add(this.isAgree_DirectorCheckEdit);
            this.Controls.Add(group_CodeLabel);
            this.Controls.Add(this.group_CodeTextEdit);
            this.Controls.Add(this.timeEdit2);
            this.Controls.Add(this.timeEdit1);
            this.Controls.Add(label3);
            this.Controls.Add(label2);
            this.Controls.Add(time_QuantumLabel);
            this.Controls.Add(this.time_QuantumSpinEdit);
            this.Controls.Add(this.numBComboBox);
            this.Controls.Add(this.nameComboBox);
            this.Controls.Add(this.amountSpinEdit);
            this.Controls.Add(date_TimeLabel);
            this.Controls.Add(this.date_TimeDateEdit);
            this.Controls.Add(this.reasonTextEdit1);
            this.Controls.Add(this.baseNumberTextEdit);
            this.Controls.Add(this.work_descTextEdit);
            this.Controls.Add(this.reasonTextEdit);
            this.Controls.Add(this.departmentTextEdit);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Name = "WorkTimeApplicationDetailForm";
            this.Size = new System.Drawing.Size(880, 521);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.label4, 0);
            this.Controls.SetChildIndex(this.label5, 0);
            this.Controls.SetChildIndex(this.label6, 0);
            this.Controls.SetChildIndex(this.label8, 0);
            this.Controls.SetChildIndex(this.label11, 0);
            this.Controls.SetChildIndex(this.label7, 0);
            this.Controls.SetChildIndex(this.label13, 0);
            this.Controls.SetChildIndex(this.departmentTextEdit, 0);
            this.Controls.SetChildIndex(this.reasonTextEdit, 0);
            this.Controls.SetChildIndex(this.work_descTextEdit, 0);
            this.Controls.SetChildIndex(this.baseNumberTextEdit, 0);
            this.Controls.SetChildIndex(this.reasonTextEdit1, 0);
            this.Controls.SetChildIndex(this.date_TimeDateEdit, 0);
            this.Controls.SetChildIndex(date_TimeLabel, 0);
            this.Controls.SetChildIndex(this.amountSpinEdit, 0);
            this.Controls.SetChildIndex(this.nameComboBox, 0);
            this.Controls.SetChildIndex(this.numBComboBox, 0);
            this.Controls.SetChildIndex(this.time_QuantumSpinEdit, 0);
            this.Controls.SetChildIndex(time_QuantumLabel, 0);
            this.Controls.SetChildIndex(label2, 0);
            this.Controls.SetChildIndex(label3, 0);
            this.Controls.SetChildIndex(this.timeEdit1, 0);
            this.Controls.SetChildIndex(this.timeEdit2, 0);
            this.Controls.SetChildIndex(this.group_CodeTextEdit, 0);
            this.Controls.SetChildIndex(group_CodeLabel, 0);
            this.Controls.SetChildIndex(this.isAgree_DirectorCheckEdit, 0);
            this.Controls.SetChildIndex(isAgree_DirectorLabel, 0);
            this.Controls.SetChildIndex(this.isAgree_ManagerCheckEdit, 0);
            this.Controls.SetChildIndex(isAgree_ManagerLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.departmentTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reasonTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.work_descTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseNumberTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reasonTextEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_TimeDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_TimeDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.amountSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.time_QuantumSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.group_CodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_DirectorCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ManagerCheckEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label13;
        private DevExpress.XtraEditors.TextEdit departmentTextEdit;
        private DevExpress.XtraEditors.TextEdit reasonTextEdit;
        private DevExpress.XtraEditors.TextEdit work_descTextEdit;
        private DevExpress.XtraEditors.TextEdit baseNumberTextEdit;
        private DevExpress.XtraEditors.TextEdit reasonTextEdit1;
        private DevExpress.XtraEditors.DateEdit date_TimeDateEdit;
        private DevExpress.XtraEditors.SpinEdit amountSpinEdit;
        private System.Windows.Forms.ComboBox nameComboBox;
        private System.Windows.Forms.ComboBox numBComboBox;
        private DevExpress.XtraEditors.SpinEdit time_QuantumSpinEdit;
        private DevExpress.XtraEditors.TimeEdit timeEdit1;
        private DevExpress.XtraEditors.TimeEdit timeEdit2;
        private DevExpress.XtraEditors.TextEdit group_CodeTextEdit;
        private DevExpress.XtraEditors.CheckEdit isAgree_DirectorCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isAgree_ManagerCheckEdit;
    }
}
