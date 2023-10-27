namespace PH.MobileQC.UI
{
    partial class StyleLineQCStatCondition
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
            this.sBut_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.sbut_OK = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.edtStyle = new DevExpress.XtraEditors.LookUpEdit();
            this.edtLine = new DevExpress.XtraEditors.LookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sBut_Cancel
            // 
            this.sBut_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sBut_Cancel.Location = new System.Drawing.Point(194, 114);
            this.sBut_Cancel.Name = "sBut_Cancel";
            this.sBut_Cancel.Size = new System.Drawing.Size(75, 23);
            this.sBut_Cancel.TabIndex = 74;
            this.sBut_Cancel.Text = "取消";
            // 
            // sbut_OK
            // 
            this.sbut_OK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbut_OK.Location = new System.Drawing.Point(103, 114);
            this.sbut_OK.Name = "sbut_OK";
            this.sbut_OK.Size = new System.Drawing.Size(75, 23);
            this.sbut_OK.TabIndex = 73;
            this.sbut_OK.Text = "確定";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(28, 69);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(40, 14);
            this.labelControl4.TabIndex = 77;
            this.labelControl4.Text = "客款號:";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(28, 27);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 14);
            this.labelControl3.TabIndex = 76;
            this.labelControl3.Text = "組裝線:";
            // 
            // edtStyle
            // 
            this.edtStyle.Location = new System.Drawing.Point(74, 66);
            this.edtStyle.Name = "edtStyle";
            this.edtStyle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStyle.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Style", "Style", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtStyle.Properties.DropDownRows = 10;
            this.edtStyle.Properties.NullText = "";
            this.edtStyle.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtStyle.Size = new System.Drawing.Size(207, 21);
            this.edtStyle.TabIndex = 71;
            this.edtStyle.Tag = "";
            // 
            // edtLine
            // 
            this.edtLine.Location = new System.Drawing.Point(74, 24);
            this.edtLine.Name = "edtLine";
            this.edtLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtLine.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Line", "Line", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.edtLine.Properties.DropDownRows = 10;
            this.edtLine.Properties.NullText = "";
            this.edtLine.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.edtLine.Size = new System.Drawing.Size(207, 21);
            this.edtLine.TabIndex = 72;
            this.edtLine.Tag = "";
            this.edtLine.EditValueChanged += new System.EventHandler(this.edtLine_EditValueChanged);
            // 
            // StyleLineQCStatCondition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 162);
            this.Controls.Add(this.sBut_Cancel);
            this.Controls.Add(this.sbut_OK);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.edtStyle);
            this.Controls.Add(this.edtLine);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "StyleLineQCStatCondition";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "查詢條件 :";
            this.Load += new System.EventHandler(this.StyleLineQCStatCondition_Load);
            ((System.ComponentModel.ISupportInitialize)(this.edtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLine.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton sBut_Cancel;
        private DevExpress.XtraEditors.SimpleButton sbut_OK;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LookUpEdit edtStyle;
        private DevExpress.XtraEditors.LookUpEdit edtLine;
    }
}