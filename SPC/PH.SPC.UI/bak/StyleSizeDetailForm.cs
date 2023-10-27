using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC.UI
{
    public partial class StyleSizeDetailForm : PH.UI.UI2.ChildDetailForm
    {
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtStyle;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.TextEdit txtColorID;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtSizeID;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit txtSizeWorld;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.TextEdit txtQty;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl15;
        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.TextEdit textEdit1;

        public StyleSizeDetailForm()
        {
            InitializeComponent();
        }

        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            //this.txtSizeWorld.DataBindings.Add("Text", this.BindingSource, "SizeWorld");
            //this.txtColorID.DataBindings.Add("Text", this.BindingSource, "ColorID");
            //this.txtSizeID.DataBindings.Add("Text", this.BindingSource, "SizeID");
            //this.txtSizeWorld.DataBindings.Add("Text", this.BindingSource, "SizeWorld");
            //this.txtQty.DataBindings.Add("Text", this.BindingSource, "Qty");
            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

        }

        private void InitializeComponent()
        {
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.txtStyle = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtColorID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtSizeID = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtSizeWorld = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtQty = new DevExpress.XtraEditors.TextEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl15 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeWorld.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(175, 12);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(40, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "辦單號:";
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(221, 9);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(82, 21);
            this.textEdit1.TabIndex = 1;
            this.textEdit1.Tag = "SampleOrder.SampleOrderID";
            // 
            // txtStyle
            // 
            this.txtStyle.Location = new System.Drawing.Point(376, 9);
            this.txtStyle.Name = "txtStyle";
            this.txtStyle.Properties.ReadOnly = true;
            this.txtStyle.Size = new System.Drawing.Size(82, 21);
            this.txtStyle.TabIndex = 3;
            this.txtStyle.Tag = "Style.StyleID";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(330, 12);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(28, 14);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "款號:";
            // 
            // txtColorID
            // 
            this.txtColorID.Location = new System.Drawing.Point(133, 60);
            this.txtColorID.Name = "txtColorID";
            this.txtColorID.Size = new System.Drawing.Size(82, 21);
            this.txtColorID.TabIndex = 5;
            this.txtColorID.Tag = "ColorID";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(99, 63);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(28, 14);
            this.labelControl3.TabIndex = 4;
            this.labelControl3.Text = "色號:";
            // 
            // txtSizeID
            // 
            this.txtSizeID.Location = new System.Drawing.Point(133, 100);
            this.txtSizeID.Name = "txtSizeID";
            this.txtSizeID.Size = new System.Drawing.Size(82, 21);
            this.txtSizeID.TabIndex = 7;
            this.txtSizeID.Tag = "SizeID";
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(99, 103);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(28, 14);
            this.labelControl4.TabIndex = 6;
            this.labelControl4.Text = "尺碼:";
            // 
            // txtSizeWorld
            // 
            this.txtSizeWorld.Location = new System.Drawing.Point(369, 100);
            this.txtSizeWorld.Name = "txtSizeWorld";
            this.txtSizeWorld.Size = new System.Drawing.Size(82, 21);
            this.txtSizeWorld.TabIndex = 9;
            this.txtSizeWorld.Tag = "SizeWorld";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(323, 103);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(40, 14);
            this.labelControl5.TabIndex = 8;
            this.labelControl5.Text = "國際碼:";
            // 
            // txtQty
            // 
            this.txtQty.Location = new System.Drawing.Point(133, 142);
            this.txtQty.Name = "txtQty";
            this.txtQty.Size = new System.Drawing.Size(82, 21);
            this.txtQty.TabIndex = 11;
            this.txtQty.Tag = "Qty";
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(75, 145);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(52, 14);
            this.labelControl6.TabIndex = 10;
            this.labelControl6.Text = "分配數量:";
            // 
            // labelControl15
            // 
            this.labelControl15.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.labelControl15.Appearance.Options.UseFont = true;
            this.labelControl15.Location = new System.Drawing.Point(18, 12);
            this.labelControl15.Name = "labelControl15";
            this.labelControl15.Size = new System.Drawing.Size(126, 14);
            this.labelControl15.TabIndex = 37;
            this.labelControl15.Text = "Style--颜色/尺碼分配";
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(369, 56);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(82, 21);
            this.textEdit2.TabIndex = 39;
            this.textEdit2.Tag = "Cup";
            // 
            // labelControl7
            // 
            this.labelControl7.Location = new System.Drawing.Point(335, 59);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(16, 14);
            this.labelControl7.TabIndex = 38;
            this.labelControl7.Text = "杯:";
            // 
            // frmStyleSizeEdit
            // 
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.labelControl7);
            this.Controls.Add(this.labelControl15);
            this.Controls.Add(this.txtQty);
            this.Controls.Add(this.labelControl6);
            this.Controls.Add(this.txtSizeWorld);
            this.Controls.Add(this.labelControl5);
            this.Controls.Add(this.txtSizeID);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.txtColorID);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.txtStyle);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.labelControl1);
            this.Name = "frmStyleSizeEdit";
            this.Size = new System.Drawing.Size(603, 227);
            this.Load += new System.EventHandler(this.frmStyleSizeEdit_Load);
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtColorID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSizeWorld.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void frmStyleSizeEdit_Load(object sender, EventArgs e)
        {

        }
    }
}
