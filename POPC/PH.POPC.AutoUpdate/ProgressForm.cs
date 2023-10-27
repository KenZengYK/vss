using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace PH.POPC.AutoUpdate.UI
{
	public class ProgressForm : DevExpress.XtraEditors.XtraForm {
		private DevExpress.XtraEditors.ProgressBarControl progressBarControl1;
		private System.ComponentModel.Container components = null;

		public ProgressForm(Form parent) {
			InitializeComponent();
			if(parent != null) {
				Left = parent.Left + (parent.Width - Width) / 2;
				Top = parent.Top + (parent.Height - Height) / 2;
			}
			this.Height = progressBarControl1.Height + progressBarControl1.Top * 2 + 4;
		}

		protected override void Dispose( bool disposing ) {
			if( disposing ) {
				if(components != null) {
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent() {
            this.progressBarControl1 = new DevExpress.XtraEditors.ProgressBarControl();
            ((System.ComponentModel.ISupportInitialize)(this.progressBarControl1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // progressBarControl1
            // 
            this.progressBarControl1.Location = new System.Drawing.Point(5, 10);
            this.progressBarControl1.Name = "progressBarControl1";
            this.progressBarControl1.Size = new System.Drawing.Size(303, 20);
            this.progressBarControl1.TabIndex = 0;
            // 
            // ProgressForm
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(6, 15);
            this.ClientSize = new System.Drawing.Size(314, 42);
            this.ControlBox = false;
            this.Controls.Add(this.progressBarControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ProgressForm";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.TopMost = true;
            ((System.ComponentModel.ISupportInitialize)(this.progressBarControl1.Properties)).EndInit();
            this.ResumeLayout(false);

		}
		#endregion

		public void SetProgressValue(int position) {
			progressBarControl1.Position = position;
			this.Update();
		}
	}
}
