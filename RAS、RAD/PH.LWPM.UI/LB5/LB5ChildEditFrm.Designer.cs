namespace PH.LWPM.UI.LB5
{
    partial class LB5ChildEditFrm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label workerIdLabel;
            System.Windows.Forms.Label workerNameLabel;
            System.Windows.Forms.Label operationSNLabel;
            System.Windows.Forms.Label operationNameLabel;
            System.Windows.Forms.Label bestMTMLabel;
            System.Windows.Forms.Label gSD_SAHLabel;
            System.Windows.Forms.Label didTime_ByWfLabel;
            System.Windows.Forms.Label didTime_InFacLabel;
            this.lb5MatchingBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.workerIdTextBox = new System.Windows.Forms.TextBox();
            this.workerNameTextBox = new System.Windows.Forms.TextBox();
            this.operationSNTextBox = new System.Windows.Forms.TextBox();
            this.operationNameTextBox = new System.Windows.Forms.TextBox();
            this.bestMTMTextBox = new System.Windows.Forms.TextBox();
            this.gSD_SAHTextBox = new System.Windows.Forms.TextBox();
            this.didTime_ByWfTextBox = new System.Windows.Forms.TextBox();
            this.didTime_InFacTextBox = new System.Windows.Forms.TextBox();
            workerIdLabel = new System.Windows.Forms.Label();
            workerNameLabel = new System.Windows.Forms.Label();
            operationSNLabel = new System.Windows.Forms.Label();
            operationNameLabel = new System.Windows.Forms.Label();
            bestMTMLabel = new System.Windows.Forms.Label();
            gSD_SAHLabel = new System.Windows.Forms.Label();
            didTime_ByWfLabel = new System.Windows.Forms.Label();
            didTime_InFacLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lb5MatchingBindingSource)).BeginInit();
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
            // workerIdLabel
            // 
            workerIdLabel.AutoSize = true;
            workerIdLabel.Location = new System.Drawing.Point(111, 72);
            workerIdLabel.Name = "workerIdLabel";
            workerIdLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(workerIdLabel, null);
            workerIdLabel.TabIndex = 4;
            workerIdLabel.Text = "Worker Id:";
            // 
            // lb5MatchingBindingSource
            // 
            this.lb5MatchingBindingSource.DataSource = typeof(PH.LWPM.BO.Lb5Matching);
            // 
            // workerIdTextBox
            // 
            this.workerIdTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "WorkerId", true));
            this.workerIdTextBox.Location = new System.Drawing.Point(182, 69);
            this.workerIdTextBox.Name = "workerIdTextBox";
            this.workerIdTextBox.Size = new System.Drawing.Size(177, 21);
            this.PlatetoolTipController.SetSuperTip(this.workerIdTextBox, null);
            this.workerIdTextBox.TabIndex = 5;
            // 
            // workerNameLabel
            // 
            workerNameLabel.AutoSize = true;
            workerNameLabel.Location = new System.Drawing.Point(418, 72);
            workerNameLabel.Name = "workerNameLabel";
            workerNameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(workerNameLabel, null);
            workerNameLabel.TabIndex = 6;
            workerNameLabel.Text = "Worker Name:";
            // 
            // workerNameTextBox
            // 
            this.workerNameTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "WorkerName", true));
            this.workerNameTextBox.Location = new System.Drawing.Point(501, 69);
            this.workerNameTextBox.Name = "workerNameTextBox";
            this.workerNameTextBox.Size = new System.Drawing.Size(204, 21);
            this.PlatetoolTipController.SetSuperTip(this.workerNameTextBox, null);
            this.workerNameTextBox.TabIndex = 7;
            // 
            // operationSNLabel
            // 
            operationSNLabel.AutoSize = true;
            operationSNLabel.Location = new System.Drawing.Point(93, 146);
            operationSNLabel.Name = "operationSNLabel";
            operationSNLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(operationSNLabel, null);
            operationSNLabel.TabIndex = 8;
            operationSNLabel.Text = "Operation SN:";
            // 
            // operationSNTextBox
            // 
            this.operationSNTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "OperationSN", true));
            this.operationSNTextBox.Location = new System.Drawing.Point(182, 143);
            this.operationSNTextBox.Name = "operationSNTextBox";
            this.operationSNTextBox.Size = new System.Drawing.Size(177, 21);
            this.PlatetoolTipController.SetSuperTip(this.operationSNTextBox, null);
            this.operationSNTextBox.TabIndex = 9;
            // 
            // operationNameLabel
            // 
            operationNameLabel.AutoSize = true;
            operationNameLabel.Location = new System.Drawing.Point(400, 146);
            operationNameLabel.Name = "operationNameLabel";
            operationNameLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(operationNameLabel, null);
            operationNameLabel.TabIndex = 10;
            operationNameLabel.Text = "Operation Name:";
            // 
            // operationNameTextBox
            // 
            this.operationNameTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "OperationName", true));
            this.operationNameTextBox.Location = new System.Drawing.Point(501, 143);
            this.operationNameTextBox.Name = "operationNameTextBox";
            this.operationNameTextBox.Size = new System.Drawing.Size(204, 21);
            this.PlatetoolTipController.SetSuperTip(this.operationNameTextBox, null);
            this.operationNameTextBox.TabIndex = 11;
            // 
            // bestMTMLabel
            // 
            bestMTMLabel.AutoSize = true;
            bestMTMLabel.Location = new System.Drawing.Point(117, 210);
            bestMTMLabel.Name = "bestMTMLabel";
            bestMTMLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(bestMTMLabel, null);
            bestMTMLabel.TabIndex = 12;
            bestMTMLabel.Text = "Best MTM:";
            // 
            // bestMTMTextBox
            // 
            this.bestMTMTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "BestMTM", true));
            this.bestMTMTextBox.Location = new System.Drawing.Point(182, 207);
            this.bestMTMTextBox.Name = "bestMTMTextBox";
            this.bestMTMTextBox.Size = new System.Drawing.Size(177, 21);
            this.PlatetoolTipController.SetSuperTip(this.bestMTMTextBox, null);
            this.bestMTMTextBox.TabIndex = 13;
            // 
            // gSD_SAHLabel
            // 
            gSD_SAHLabel.AutoSize = true;
            gSD_SAHLabel.Location = new System.Drawing.Point(442, 204);
            gSD_SAHLabel.Name = "gSD_SAHLabel";
            gSD_SAHLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(gSD_SAHLabel, null);
            gSD_SAHLabel.TabIndex = 14;
            gSD_SAHLabel.Text = "GSD SAH:";
            // 
            // gSD_SAHTextBox
            // 
            this.gSD_SAHTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "GSD_SAH", true));
            this.gSD_SAHTextBox.Location = new System.Drawing.Point(501, 201);
            this.gSD_SAHTextBox.Name = "gSD_SAHTextBox";
            this.gSD_SAHTextBox.Size = new System.Drawing.Size(204, 21);
            this.PlatetoolTipController.SetSuperTip(this.gSD_SAHTextBox, null);
            this.gSD_SAHTextBox.TabIndex = 15;
            // 
            // didTime_ByWfLabel
            // 
            didTime_ByWfLabel.AutoSize = true;
            didTime_ByWfLabel.Location = new System.Drawing.Point(81, 269);
            didTime_ByWfLabel.Name = "didTime_ByWfLabel";
            didTime_ByWfLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(didTime_ByWfLabel, null);
            didTime_ByWfLabel.TabIndex = 16;
            didTime_ByWfLabel.Text = "Did Time By Wf:";
            // 
            // didTime_ByWfTextBox
            // 
            this.didTime_ByWfTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "DidTime_ByWf", true));
            this.didTime_ByWfTextBox.Location = new System.Drawing.Point(182, 266);
            this.didTime_ByWfTextBox.Name = "didTime_ByWfTextBox";
            this.didTime_ByWfTextBox.Size = new System.Drawing.Size(177, 21);
            this.PlatetoolTipController.SetSuperTip(this.didTime_ByWfTextBox, null);
            this.didTime_ByWfTextBox.TabIndex = 17;
            // 
            // didTime_InFacLabel
            // 
            didTime_InFacLabel.AutoSize = true;
            didTime_InFacLabel.Location = new System.Drawing.Point(394, 269);
            didTime_InFacLabel.Name = "didTime_InFacLabel";
            didTime_InFacLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(didTime_InFacLabel, null);
            didTime_InFacLabel.TabIndex = 18;
            didTime_InFacLabel.Text = "Did Time In Fac:";
            // 
            // didTime_InFacTextBox
            // 
            this.didTime_InFacTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.lb5MatchingBindingSource, "DidTime_InFac", true));
            this.didTime_InFacTextBox.Location = new System.Drawing.Point(501, 266);
            this.didTime_InFacTextBox.Name = "didTime_InFacTextBox";
            this.didTime_InFacTextBox.Size = new System.Drawing.Size(204, 21);
            this.PlatetoolTipController.SetSuperTip(this.didTime_InFacTextBox, null);
            this.didTime_InFacTextBox.TabIndex = 19;
            // 
            // LB5ChildEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(didTime_InFacLabel);
            this.Controls.Add(this.didTime_InFacTextBox);
            this.Controls.Add(didTime_ByWfLabel);
            this.Controls.Add(this.didTime_ByWfTextBox);
            this.Controls.Add(gSD_SAHLabel);
            this.Controls.Add(this.gSD_SAHTextBox);
            this.Controls.Add(bestMTMLabel);
            this.Controls.Add(this.bestMTMTextBox);
            this.Controls.Add(operationNameLabel);
            this.Controls.Add(this.operationNameTextBox);
            this.Controls.Add(operationSNLabel);
            this.Controls.Add(this.operationSNTextBox);
            this.Controls.Add(workerNameLabel);
            this.Controls.Add(this.workerNameTextBox);
            this.Controls.Add(workerIdLabel);
            this.Controls.Add(this.workerIdTextBox);
            this.Name = "LB5ChildEditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.workerIdTextBox, 0);
            this.Controls.SetChildIndex(workerIdLabel, 0);
            this.Controls.SetChildIndex(this.workerNameTextBox, 0);
            this.Controls.SetChildIndex(workerNameLabel, 0);
            this.Controls.SetChildIndex(this.operationSNTextBox, 0);
            this.Controls.SetChildIndex(operationSNLabel, 0);
            this.Controls.SetChildIndex(this.operationNameTextBox, 0);
            this.Controls.SetChildIndex(operationNameLabel, 0);
            this.Controls.SetChildIndex(this.bestMTMTextBox, 0);
            this.Controls.SetChildIndex(bestMTMLabel, 0);
            this.Controls.SetChildIndex(this.gSD_SAHTextBox, 0);
            this.Controls.SetChildIndex(gSD_SAHLabel, 0);
            this.Controls.SetChildIndex(this.didTime_ByWfTextBox, 0);
            this.Controls.SetChildIndex(didTime_ByWfLabel, 0);
            this.Controls.SetChildIndex(this.didTime_InFacTextBox, 0);
            this.Controls.SetChildIndex(didTime_InFacLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lb5MatchingBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource lb5MatchingBindingSource;
        private System.Windows.Forms.TextBox workerIdTextBox;
        private System.Windows.Forms.TextBox workerNameTextBox;
        private System.Windows.Forms.TextBox operationSNTextBox;
        private System.Windows.Forms.TextBox operationNameTextBox;
        private System.Windows.Forms.TextBox bestMTMTextBox;
        private System.Windows.Forms.TextBox gSD_SAHTextBox;
        private System.Windows.Forms.TextBox didTime_ByWfTextBox;
        private System.Windows.Forms.TextBox didTime_InFacTextBox;
    }
}
