namespace PH.RWO.UI
{
    partial class RwoAssignQtyForm
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
            this.gdcOriginal = new DevExpress.XtraGrid.GridControl();
            this.gdvOriginal = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gdcAssign = new DevExpress.XtraGrid.GridControl();
            this.gdvAssign = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.sbtnSave = new DevExpress.XtraEditors.SimpleButton();
            this.sbtnCancel = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gdcOriginal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvOriginal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcAssign)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvAssign)).BeginInit();
            this.SuspendLayout();
            // 
            // gdcOriginal
            // 
            this.gdcOriginal.Dock = System.Windows.Forms.DockStyle.Top;
            this.gdcOriginal.EmbeddedNavigator.Name = "";
            this.gdcOriginal.Location = new System.Drawing.Point(0, 0);
            this.gdcOriginal.MainView = this.gdvOriginal;
            this.gdcOriginal.Name = "gdcOriginal";
            this.gdcOriginal.Size = new System.Drawing.Size(618, 214);
            this.gdcOriginal.TabIndex = 0;
            this.gdcOriginal.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gdvOriginal});
            // 
            // gdvOriginal
            // 
            this.gdvOriginal.Appearance.GroupPanel.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gdvOriginal.Appearance.GroupPanel.ForeColor = System.Drawing.Color.Red;
            this.gdvOriginal.Appearance.GroupPanel.Options.UseFont = true;
            this.gdvOriginal.Appearance.GroupPanel.Options.UseForeColor = true;
            this.gdvOriginal.Appearance.GroupPanel.Options.UseTextOptions = true;
            this.gdvOriginal.Appearance.GroupPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gdvOriginal.GridControl = this.gdcOriginal;
            this.gdvOriginal.GroupPanelText = "Last applied:";
            this.gdvOriginal.Name = "gdvOriginal";
            this.gdvOriginal.OptionsBehavior.Editable = false;
            // 
            // gdcAssign
            // 
            this.gdcAssign.Dock = System.Windows.Forms.DockStyle.Top;
            this.gdcAssign.EmbeddedNavigator.Name = "";
            this.gdcAssign.Location = new System.Drawing.Point(0, 214);
            this.gdcAssign.MainView = this.gdvAssign;
            this.gdcAssign.Name = "gdcAssign";
            this.gdcAssign.Size = new System.Drawing.Size(618, 200);
            this.gdcAssign.TabIndex = 1;
            this.gdcAssign.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gdvAssign});
            // 
            // gdvAssign
            // 
            this.gdvAssign.Appearance.GroupPanel.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gdvAssign.Appearance.GroupPanel.ForeColor = System.Drawing.Color.Red;
            this.gdvAssign.Appearance.GroupPanel.Options.UseFont = true;
            this.gdvAssign.Appearance.GroupPanel.Options.UseForeColor = true;
            this.gdvAssign.Appearance.GroupPanel.Options.UseTextOptions = true;
            this.gdvAssign.Appearance.GroupPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gdvAssign.GridControl = this.gdcAssign;
            this.gdvAssign.GroupPanelText = "Current apply:";
            this.gdvAssign.Name = "gdvAssign";
            this.gdvAssign.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.gdvAssign_CustomSummaryCalculate);
            this.gdvAssign.InvalidRowException += new DevExpress.XtraGrid.Views.Base.InvalidRowExceptionEventHandler(this.gdvAssign_InvalidRowException);
            this.gdvAssign.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.gdvAssign_ValidateRow);
            // 
            // sbtnSave
            // 
            this.sbtnSave.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.sbtnSave.Location = new System.Drawing.Point(450, 440);
            this.sbtnSave.Name = "sbtnSave";
            this.sbtnSave.Size = new System.Drawing.Size(75, 30);
            this.sbtnSave.TabIndex = 2;
            this.sbtnSave.Text = "Save";
            this.sbtnSave.Click += new System.EventHandler(this.sbtnSave_Click);
            // 
            // sbtnCancel
            // 
            this.sbtnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.sbtnCancel.Location = new System.Drawing.Point(531, 440);
            this.sbtnCancel.Name = "sbtnCancel";
            this.sbtnCancel.Size = new System.Drawing.Size(75, 30);
            this.sbtnCancel.TabIndex = 3;
            this.sbtnCancel.Text = "Cancel";
            // 
            // RwoAssignQtyForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(618, 482);
            this.Controls.Add(this.sbtnCancel);
            this.Controls.Add(this.sbtnSave);
            this.Controls.Add(this.gdcAssign);
            this.Controls.Add(this.gdcOriginal);
            this.Name = "RwoAssignQtyForm";
            this.Text = "Assign quantity for factories";
            ((System.ComponentModel.ISupportInitialize)(this.gdcOriginal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvOriginal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcAssign)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvAssign)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gdcOriginal;
        private DevExpress.XtraGrid.Views.Grid.GridView gdvOriginal;
        private DevExpress.XtraGrid.GridControl gdcAssign;
        private DevExpress.XtraGrid.Views.Grid.GridView gdvAssign;
        private DevExpress.XtraEditors.SimpleButton sbtnSave;
        private DevExpress.XtraEditors.SimpleButton sbtnCancel;


    }
}