namespace PH.LWPM.UI.LB4
{
    partial class LB4ChildEditFrm
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
            System.Windows.Forms.Label bestMTMLabel;
            System.Windows.Forms.Label mtm_PastLabel;
            System.Windows.Forms.Label mtm_SuggestLabel;
            System.Windows.Forms.Label workerIdLabel;
            System.Windows.Forms.Label workerNameLabel;
            System.Windows.Forms.Label operationSNLabel;
            System.Windows.Forms.Label gSD_SAHLabel;
            System.Windows.Forms.Label didTime_ByWfLabel;
            System.Windows.Forms.Label didTime_InFacLabel;
            System.Windows.Forms.Label operationNameLabel;
            this.bestMTMTextBox = new System.Windows.Forms.TextBox();
            this.mtm_PastTextBox = new System.Windows.Forms.TextBox();
            this.mtm_SuggestTextBox = new System.Windows.Forms.TextBox();
            this.workerIdTextBox = new System.Windows.Forms.TextBox();
            this.workerNameTextBox = new System.Windows.Forms.TextBox();
            this.operationSNTextBox = new System.Windows.Forms.TextBox();
            this.gSD_SAHTextBox = new System.Windows.Forms.TextBox();
            this.didTime_ByWfTextBox = new System.Windows.Forms.TextBox();
            this.didTime_InFacTextBox = new System.Windows.Forms.TextBox();
            this.operationNameTextBox = new System.Windows.Forms.TextBox();
            bestMTMLabel = new System.Windows.Forms.Label();
            mtm_PastLabel = new System.Windows.Forms.Label();
            mtm_SuggestLabel = new System.Windows.Forms.Label();
            workerIdLabel = new System.Windows.Forms.Label();
            workerNameLabel = new System.Windows.Forms.Label();
            operationSNLabel = new System.Windows.Forms.Label();
            gSD_SAHLabel = new System.Windows.Forms.Label();
            didTime_ByWfLabel = new System.Windows.Forms.Label();
            didTime_InFacLabel = new System.Windows.Forms.Label();
            operationNameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Matching);
            // 
            // bestMTMLabel
            // 
            bestMTMLabel.AutoSize = true;
            bestMTMLabel.Location = new System.Drawing.Point(103, 209);
            bestMTMLabel.Name = "bestMTMLabel";
            bestMTMLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(bestMTMLabel, null);
            bestMTMLabel.TabIndex = 4;
            bestMTMLabel.Text = "Best MTM:";
            // 
            // mtm_PastLabel
            // 
            mtm_PastLabel.AutoSize = true;
            mtm_PastLabel.Location = new System.Drawing.Point(99, 318);
            mtm_PastLabel.Name = "mtm_PastLabel";
            mtm_PastLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(mtm_PastLabel, null);
            mtm_PastLabel.TabIndex = 6;
            mtm_PastLabel.Text = "Mtm Past:";
            // 
            // mtm_SuggestLabel
            // 
            mtm_SuggestLabel.AutoSize = true;
            mtm_SuggestLabel.Location = new System.Drawing.Point(463, 318);
            mtm_SuggestLabel.Name = "mtm_SuggestLabel";
            mtm_SuggestLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(mtm_SuggestLabel, null);
            mtm_SuggestLabel.TabIndex = 8;
            mtm_SuggestLabel.Text = "Mtm Suggest:";
            // 
            // workerIdLabel
            // 
            workerIdLabel.AutoSize = true;
            workerIdLabel.Location = new System.Drawing.Point(97, 74);
            workerIdLabel.Name = "workerIdLabel";
            workerIdLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(workerIdLabel, null);
            workerIdLabel.TabIndex = 10;
            workerIdLabel.Text = "Worker Id:";
            // 
            // workerNameLabel
            // 
            workerNameLabel.AutoSize = true;
            workerNameLabel.Location = new System.Drawing.Point(467, 74);
            workerNameLabel.Name = "workerNameLabel";
            workerNameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(workerNameLabel, null);
            workerNameLabel.TabIndex = 12;
            workerNameLabel.Text = "Worker Name:";
            // 
            // operationSNLabel
            // 
            operationSNLabel.AutoSize = true;
            operationSNLabel.Location = new System.Drawing.Point(79, 136);
            operationSNLabel.Name = "operationSNLabel";
            operationSNLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(operationSNLabel, null);
            operationSNLabel.TabIndex = 14;
            operationSNLabel.Text = "Operation SN:";
            // 
            // gSD_SAHLabel
            // 
            gSD_SAHLabel.AutoSize = true;
            gSD_SAHLabel.Location = new System.Drawing.Point(491, 203);
            gSD_SAHLabel.Name = "gSD_SAHLabel";
            gSD_SAHLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(gSD_SAHLabel, null);
            gSD_SAHLabel.TabIndex = 18;
            gSD_SAHLabel.Text = "GSD SAH:";
            // 
            // didTime_ByWfLabel
            // 
            didTime_ByWfLabel.AutoSize = true;
            didTime_ByWfLabel.Location = new System.Drawing.Point(67, 261);
            didTime_ByWfLabel.Name = "didTime_ByWfLabel";
            didTime_ByWfLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(didTime_ByWfLabel, null);
            didTime_ByWfLabel.TabIndex = 20;
            didTime_ByWfLabel.Text = "Did Time By Wf:";
            // 
            // didTime_InFacLabel
            // 
            didTime_InFacLabel.AutoSize = true;
            didTime_InFacLabel.Location = new System.Drawing.Point(443, 261);
            didTime_InFacLabel.Name = "didTime_InFacLabel";
            didTime_InFacLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(didTime_InFacLabel, null);
            didTime_InFacLabel.TabIndex = 22;
            didTime_InFacLabel.Text = "Did Time In Fac:";
            // 
            // bestMTMTextBox
            // 
            this.bestMTMTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "BestMTM", true));
            this.bestMTMTextBox.Location = new System.Drawing.Point(168, 206);
            this.bestMTMTextBox.Name = "bestMTMTextBox";
            this.bestMTMTextBox.Size = new System.Drawing.Size(188, 21);
            this.PlatetoolTipController.SetSuperTip(this.bestMTMTextBox, null);
            this.bestMTMTextBox.TabIndex = 5;
            // 
            // mtm_PastTextBox
            // 
            this.mtm_PastTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Mtm_Past", true));
            this.mtm_PastTextBox.Location = new System.Drawing.Point(168, 315);
            this.mtm_PastTextBox.Name = "mtm_PastTextBox";
            this.mtm_PastTextBox.Size = new System.Drawing.Size(188, 21);
            this.PlatetoolTipController.SetSuperTip(this.mtm_PastTextBox, null);
            this.mtm_PastTextBox.TabIndex = 7;
            // 
            // mtm_SuggestTextBox
            // 
            this.mtm_SuggestTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Mtm_Suggest", true));
            this.mtm_SuggestTextBox.Location = new System.Drawing.Point(550, 315);
            this.mtm_SuggestTextBox.Name = "mtm_SuggestTextBox";
            this.mtm_SuggestTextBox.Size = new System.Drawing.Size(230, 21);
            this.PlatetoolTipController.SetSuperTip(this.mtm_SuggestTextBox, null);
            this.mtm_SuggestTextBox.TabIndex = 9;
            // 
            // workerIdTextBox
            // 
            this.workerIdTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WorkerId", true));
            this.workerIdTextBox.Location = new System.Drawing.Point(168, 71);
            this.workerIdTextBox.Name = "workerIdTextBox";
            this.workerIdTextBox.Size = new System.Drawing.Size(188, 21);
            this.PlatetoolTipController.SetSuperTip(this.workerIdTextBox, null);
            this.workerIdTextBox.TabIndex = 11;
            // 
            // workerNameTextBox
            // 
            this.workerNameTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WorkerName", true));
            this.workerNameTextBox.Location = new System.Drawing.Point(550, 71);
            this.workerNameTextBox.Name = "workerNameTextBox";
            this.workerNameTextBox.Size = new System.Drawing.Size(230, 21);
            this.PlatetoolTipController.SetSuperTip(this.workerNameTextBox, null);
            this.workerNameTextBox.TabIndex = 13;
            // 
            // operationSNTextBox
            // 
            this.operationSNTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "OperationSN", true));
            this.operationSNTextBox.Location = new System.Drawing.Point(168, 133);
            this.operationSNTextBox.Name = "operationSNTextBox";
            this.operationSNTextBox.Size = new System.Drawing.Size(188, 21);
            this.PlatetoolTipController.SetSuperTip(this.operationSNTextBox, null);
            this.operationSNTextBox.TabIndex = 15;
            // 
            // gSD_SAHTextBox
            // 
            this.gSD_SAHTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "GSD_SAH", true));
            this.gSD_SAHTextBox.Location = new System.Drawing.Point(550, 200);
            this.gSD_SAHTextBox.Name = "gSD_SAHTextBox";
            this.gSD_SAHTextBox.Size = new System.Drawing.Size(230, 21);
            this.PlatetoolTipController.SetSuperTip(this.gSD_SAHTextBox, null);
            this.gSD_SAHTextBox.TabIndex = 19;
            // 
            // didTime_ByWfTextBox
            // 
            this.didTime_ByWfTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "DidTime_ByWf", true));
            this.didTime_ByWfTextBox.Location = new System.Drawing.Point(168, 258);
            this.didTime_ByWfTextBox.Name = "didTime_ByWfTextBox";
            this.didTime_ByWfTextBox.Size = new System.Drawing.Size(188, 21);
            this.PlatetoolTipController.SetSuperTip(this.didTime_ByWfTextBox, null);
            this.didTime_ByWfTextBox.TabIndex = 21;
            // 
            // didTime_InFacTextBox
            // 
            this.didTime_InFacTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "DidTime_InFac", true));
            this.didTime_InFacTextBox.Location = new System.Drawing.Point(550, 258);
            this.didTime_InFacTextBox.Name = "didTime_InFacTextBox";
            this.didTime_InFacTextBox.Size = new System.Drawing.Size(230, 21);
            this.PlatetoolTipController.SetSuperTip(this.didTime_InFacTextBox, null);
            this.didTime_InFacTextBox.TabIndex = 23;
            // 
            // operationNameLabel
            // 
            operationNameLabel.AutoSize = true;
            operationNameLabel.Location = new System.Drawing.Point(449, 139);
            operationNameLabel.Name = "operationNameLabel";
            operationNameLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(operationNameLabel, null);
            operationNameLabel.TabIndex = 24;
            operationNameLabel.Text = "Operation Name:";
            // 
            // operationNameTextBox
            // 
            this.operationNameTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "OperationName", true));
            this.operationNameTextBox.Location = new System.Drawing.Point(550, 136);
            this.operationNameTextBox.Name = "operationNameTextBox";
            this.operationNameTextBox.Size = new System.Drawing.Size(230, 21);
            this.PlatetoolTipController.SetSuperTip(this.operationNameTextBox, null);
            this.operationNameTextBox.TabIndex = 25;
            // 
            // LB4ChildEditFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(operationNameLabel);
            this.Controls.Add(this.operationNameTextBox);
            this.Controls.Add(didTime_InFacLabel);
            this.Controls.Add(this.didTime_InFacTextBox);
            this.Controls.Add(didTime_ByWfLabel);
            this.Controls.Add(this.didTime_ByWfTextBox);
            this.Controls.Add(gSD_SAHLabel);
            this.Controls.Add(this.gSD_SAHTextBox);
            this.Controls.Add(operationSNLabel);
            this.Controls.Add(this.operationSNTextBox);
            this.Controls.Add(workerNameLabel);
            this.Controls.Add(this.workerNameTextBox);
            this.Controls.Add(workerIdLabel);
            this.Controls.Add(this.workerIdTextBox);
            this.Controls.Add(mtm_SuggestLabel);
            this.Controls.Add(this.mtm_SuggestTextBox);
            this.Controls.Add(mtm_PastLabel);
            this.Controls.Add(this.mtm_PastTextBox);
            this.Controls.Add(bestMTMLabel);
            this.Controls.Add(this.bestMTMTextBox);
            this.Name = "LB4ChildEditFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.bestMTMTextBox, 0);
            this.Controls.SetChildIndex(bestMTMLabel, 0);
            this.Controls.SetChildIndex(this.mtm_PastTextBox, 0);
            this.Controls.SetChildIndex(mtm_PastLabel, 0);
            this.Controls.SetChildIndex(this.mtm_SuggestTextBox, 0);
            this.Controls.SetChildIndex(mtm_SuggestLabel, 0);
            this.Controls.SetChildIndex(this.workerIdTextBox, 0);
            this.Controls.SetChildIndex(workerIdLabel, 0);
            this.Controls.SetChildIndex(this.workerNameTextBox, 0);
            this.Controls.SetChildIndex(workerNameLabel, 0);
            this.Controls.SetChildIndex(this.operationSNTextBox, 0);
            this.Controls.SetChildIndex(operationSNLabel, 0);
            this.Controls.SetChildIndex(this.gSD_SAHTextBox, 0);
            this.Controls.SetChildIndex(gSD_SAHLabel, 0);
            this.Controls.SetChildIndex(this.didTime_ByWfTextBox, 0);
            this.Controls.SetChildIndex(didTime_ByWfLabel, 0);
            this.Controls.SetChildIndex(this.didTime_InFacTextBox, 0);
            this.Controls.SetChildIndex(didTime_InFacLabel, 0);
            this.Controls.SetChildIndex(this.operationNameTextBox, 0);
            this.Controls.SetChildIndex(operationNameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox bestMTMTextBox;
        private System.Windows.Forms.TextBox mtm_PastTextBox;
        private System.Windows.Forms.TextBox mtm_SuggestTextBox;
        private System.Windows.Forms.TextBox workerIdTextBox;
        private System.Windows.Forms.TextBox workerNameTextBox;
        private System.Windows.Forms.TextBox operationSNTextBox;
        private System.Windows.Forms.TextBox gSD_SAHTextBox;
        private System.Windows.Forms.TextBox didTime_ByWfTextBox;
        private System.Windows.Forms.TextBox didTime_InFacTextBox;
        private System.Windows.Forms.TextBox operationNameTextBox;
    }
}
