using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.UI
{
    public partial class StyleSampleProgressSheetDetailForm : PH.UI.UI2.ChildDetailForm
    {
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit textEdit3;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit txtWkDay;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.MemoEdit memActions;
        private DevExpress.XtraEditors.MemoEdit memStatue;
        private DevExpress.XtraEditors.MemoEdit memRemark;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl6;
    
        public StyleSampleProgressSheetDetailForm()
        {
            InitializeComponent();
        }

        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            //this.textEdit1.DataBindings.Add("Text", this.BindingSource, "Statue");
            //this.memStatue.DataBindings.Add("Text", this.BindingSource, "Statue");
            //this.txtWkDay.DataBindings.Add("Text", this.BindingSource, "WkDay");
            //this.memRemark.DataBindings.Add("Text", this.BindingSource, "Remark");
            //this.memActions.DataBindings.Add("Text", this.BindingSource, "Actions");
        }

        private void InitializeComponent()
        {
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtWkDay = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.memActions = new DevExpress.XtraEditors.MemoEdit();
            this.memStatue = new DevExpress.XtraEditors.MemoEdit();
            this.memRemark = new DevExpress.XtraEditors.MemoEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWkDay.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memActions.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memStatue.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memRemark.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(52, 91);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(102, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "SAMPLE  STATUS:";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(433, 14);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(40, 14);
            this.labelControl2.TabIndex = 7;
            this.labelControl2.Text = "¿îÌ–:";
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(479, 11);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(88, 21);
            this.textEdit2.TabIndex = 6;
            this.textEdit2.Tag = "Style.StyleID";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(292, 14);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(40, 14);
            this.labelControl3.TabIndex = 5;
            this.labelControl3.Text = "Þk†ÎÌ–:";
            // 
            // textEdit3
            // 
            this.textEdit3.Location = new System.Drawing.Point(338, 11);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Properties.ReadOnly = true;
            this.textEdit3.Size = new System.Drawing.Size(88, 21);
            this.textEdit3.TabIndex = 4;
            this.textEdit3.Tag = "SampleOrder.SampleOrderID";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(102, 54);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(52, 14);
            this.labelControl4.TabIndex = 9;
            this.labelControl4.Text = "WK/DAY:";
            // 
            // txtWkDay
            // 
            this.txtWkDay.Location = new System.Drawing.Point(160, 51);
            this.txtWkDay.Name = "txtWkDay";
            this.txtWkDay.Size = new System.Drawing.Size(88, 21);
            this.txtWkDay.TabIndex = 8;
            this.txtWkDay.Tag = "WkDay";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(18, 228);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(136, 14);
            this.labelControl5.TabIndex = 10;
            this.labelControl5.Text = "ACTIONS TO BE TAKEN:";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(101, 163);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(49, 14);
            this.labelControl6.TabIndex = 12;
            this.labelControl6.Text = "REMARK:";
            // 
            // memActions
            // 
            this.memActions.Location = new System.Drawing.Point(156, 226);
            this.memActions.Name = "memActions";
            this.memActions.Size = new System.Drawing.Size(342, 63);
            this.memActions.TabIndex = 14;
            this.memActions.Tag = "Actions";
            // 
            // memStatue
            // 
            this.memStatue.Location = new System.Drawing.Point(156, 89);
            this.memStatue.Name = "memStatue";
            this.memStatue.Size = new System.Drawing.Size(342, 66);
            this.memStatue.TabIndex = 15;
            this.memStatue.Tag = "Statue";
            // 
            // memRemark
            // 
            this.memRemark.Location = new System.Drawing.Point(156, 161);
            this.memRemark.Name = "memRemark";
            this.memRemark.Size = new System.Drawing.Size(342, 59);
            this.memRemark.TabIndex = 16;
            this.memRemark.Tag = "Remark";
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Location = new System.Drawing.Point(17, 14);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(257, 14);
            this.labelControl7.TabIndex = 17;
            this.labelControl7.Text = "Style--Sample Progress Sheet(˜Ó°åßM¶È±í)";
            // 
            // frmStyleSampleProgressSheetEdit
            // 
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.memRemark);
            this.Controls.Add(this.memStatue);
            this.Controls.Add(this.memActions);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.txtWkDay);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.textEdit3);
            this.Controls.Add(this.labelControl1);
            this.Name = "frmStyleSampleProgressSheetEdit";
            this.Size = new System.Drawing.Size(704, 336);
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWkDay.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memActions.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memStatue.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memRemark.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
    }
}
