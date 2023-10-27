using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class RoundWorkOrderDetailTemp1DetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        private DevExpress.XtraEditors.TextEdit txt_SampleQty;
        private Label lable_SampleQty;
        private DevExpress.XtraEditors.TextEdit txt_BulkQty;
        private Label lable_BulkQty;
        private DevExpress.XtraEditors.TextEdit txt_Size;
        private Label lable_Size;
        private DevExpress.XtraEditors.TextEdit txt_Cup;
        private Label lable_Cup;
        private DevExpress.XtraEditors.TextEdit txt_ColorCode;
        private Label lable_ColorCode;
        private DevExpress.XtraEditors.TextEdit txt_CustStyle;
        private Label lable_CustStyle;
        private DevExpress.XtraEditors.TextEdit txt_RoundNo;
        private Label lable_RoundNo;
        private DevExpress.XtraEditors.TextEdit txt_WorkOrderNo;
        private Label lable_WorkOrderNo;
        private DevExpress.XtraEditors.TextEdit txt_SalesOrderLine;
        private Label lable_SalesOrderLine;
        private DevExpress.XtraEditors.TextEdit txt_SalesOrderNo;
        private Label lable_SalesOrderNo;
        private DevExpress.XtraEditors.TextEdit txt_Company;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private Label label1;
        private Label lable_Company;
    
        public RoundWorkOrderDetailTemp1DetailForm()
        {
            InitializeComponent();
            //this.getColorCode();
        }

        private void barBtnEdit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.workOrderTextEdit.Properties.ReadOnly = true;
           // this.roundTextEdit.Properties.ReadOnly = true;\
        }



        private void InitializeComponent()
        {
            this.txt_SampleQty = new DevExpress.XtraEditors.TextEdit();
            this.lable_SampleQty = new System.Windows.Forms.Label();
            this.txt_BulkQty = new DevExpress.XtraEditors.TextEdit();
            this.lable_BulkQty = new System.Windows.Forms.Label();
            this.txt_Size = new DevExpress.XtraEditors.TextEdit();
            this.lable_Size = new System.Windows.Forms.Label();
            this.txt_Cup = new DevExpress.XtraEditors.TextEdit();
            this.lable_Cup = new System.Windows.Forms.Label();
            this.txt_ColorCode = new DevExpress.XtraEditors.TextEdit();
            this.lable_ColorCode = new System.Windows.Forms.Label();
            this.txt_CustStyle = new DevExpress.XtraEditors.TextEdit();
            this.lable_CustStyle = new System.Windows.Forms.Label();
            this.txt_RoundNo = new DevExpress.XtraEditors.TextEdit();
            this.lable_RoundNo = new System.Windows.Forms.Label();
            this.txt_WorkOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.lable_WorkOrderNo = new System.Windows.Forms.Label();
            this.txt_SalesOrderLine = new DevExpress.XtraEditors.TextEdit();
            this.lable_SalesOrderLine = new System.Windows.Forms.Label();
            this.txt_SalesOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.lable_SalesOrderNo = new System.Windows.Forms.Label();
            this.txt_Company = new DevExpress.XtraEditors.TextEdit();
            this.lable_Company = new System.Windows.Forms.Label();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SampleQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_BulkQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Size.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Cup.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_ColorCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_CustStyle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_RoundNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_WorkOrderNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SalesOrderLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SalesOrderNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
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
            // txt_SampleQty
            // 
            this.txt_SampleQty.Location = new System.Drawing.Point(658, 144);
            this.txt_SampleQty.Name = "txt_SampleQty";
            this.txt_SampleQty.Size = new System.Drawing.Size(146, 21);
            this.txt_SampleQty.TabIndex = 131;
            this.txt_SampleQty.Tag = "SampleQty";
            // 
            // lable_SampleQty
            // 
            this.lable_SampleQty.AutoSize = true;
            this.lable_SampleQty.Location = new System.Drawing.Point(569, 149);
            this.lable_SampleQty.Name = "lable_SampleQty";
            this.lable_SampleQty.Size = new System.Drawing.Size(62, 12);
            this.lable_SampleQty.TabIndex = 120;
            this.lable_SampleQty.Text = "Sample Qty:";
            // 
            // txt_BulkQty
            // 
            this.txt_BulkQty.Location = new System.Drawing.Point(658, 117);
            this.txt_BulkQty.Name = "txt_BulkQty";
            this.txt_BulkQty.Size = new System.Drawing.Size(146, 21);
            this.txt_BulkQty.TabIndex = 130;
            this.txt_BulkQty.Tag = "BulkQty";
            // 
            // lable_BulkQty
            // 
            this.lable_BulkQty.AutoSize = true;
            this.lable_BulkQty.Location = new System.Drawing.Point(569, 122);
            this.lable_BulkQty.Name = "lable_BulkQty";
            this.lable_BulkQty.Size = new System.Drawing.Size(51, 12);
            this.lable_BulkQty.TabIndex = 119;
            this.lable_BulkQty.Text = "Bulk Qty:";
            // 
            // txt_Size
            // 
            this.txt_Size.Location = new System.Drawing.Point(396, 144);
            this.txt_Size.Name = "txt_Size";
            this.txt_Size.Size = new System.Drawing.Size(148, 21);
            this.txt_Size.TabIndex = 129;
            this.txt_Size.Tag = "Size";
            // 
            // lable_Size
            // 
            this.lable_Size.AutoSize = true;
            this.lable_Size.Location = new System.Drawing.Point(318, 149);
            this.lable_Size.Name = "lable_Size";
            this.lable_Size.Size = new System.Drawing.Size(27, 12);
            this.lable_Size.TabIndex = 118;
            this.lable_Size.Text = "Size:";
            // 
            // txt_Cup
            // 
            this.txt_Cup.Location = new System.Drawing.Point(396, 117);
            this.txt_Cup.Name = "txt_Cup";
            this.txt_Cup.Size = new System.Drawing.Size(148, 21);
            this.txt_Cup.TabIndex = 128;
            this.txt_Cup.Tag = "Cup";
            // 
            // lable_Cup
            // 
            this.lable_Cup.AutoSize = true;
            this.lable_Cup.Location = new System.Drawing.Point(318, 122);
            this.lable_Cup.Name = "lable_Cup";
            this.lable_Cup.Size = new System.Drawing.Size(28, 12);
            this.lable_Cup.TabIndex = 117;
            this.lable_Cup.Text = "Cup:";
            // 
            // txt_ColorCode
            // 
            this.txt_ColorCode.Location = new System.Drawing.Point(396, 90);
            this.txt_ColorCode.Name = "txt_ColorCode";
            this.txt_ColorCode.Size = new System.Drawing.Size(148, 21);
            this.txt_ColorCode.TabIndex = 127;
            this.txt_ColorCode.Tag = "ColorCode";
            // 
            // lable_ColorCode
            // 
            this.lable_ColorCode.AutoSize = true;
            this.lable_ColorCode.Location = new System.Drawing.Point(318, 95);
            this.lable_ColorCode.Name = "lable_ColorCode";
            this.lable_ColorCode.Size = new System.Drawing.Size(63, 12);
            this.lable_ColorCode.TabIndex = 116;
            this.lable_ColorCode.Text = "Color Code:";
            // 
            // txt_CustStyle
            // 
            this.txt_CustStyle.Location = new System.Drawing.Point(658, 63);
            this.txt_CustStyle.Name = "txt_CustStyle";
            this.txt_CustStyle.Size = new System.Drawing.Size(146, 21);
            this.txt_CustStyle.TabIndex = 126;
            this.txt_CustStyle.Tag = "CustStyle";
            // 
            // lable_CustStyle
            // 
            this.lable_CustStyle.AutoSize = true;
            this.lable_CustStyle.Location = new System.Drawing.Point(569, 68);
            this.lable_CustStyle.Name = "lable_CustStyle";
            this.lable_CustStyle.Size = new System.Drawing.Size(55, 12);
            this.lable_CustStyle.TabIndex = 115;
            this.lable_CustStyle.Text = "Cust Style:";
            // 
            // txt_RoundNo
            // 
            this.txt_RoundNo.Location = new System.Drawing.Point(396, 63);
            this.txt_RoundNo.Name = "txt_RoundNo";
            this.txt_RoundNo.Size = new System.Drawing.Size(148, 21);
            this.txt_RoundNo.TabIndex = 125;
            this.txt_RoundNo.Tag = "RoundNo";
            // 
            // lable_RoundNo
            // 
            this.lable_RoundNo.AutoSize = true;
            this.lable_RoundNo.Location = new System.Drawing.Point(318, 68);
            this.lable_RoundNo.Name = "lable_RoundNo";
            this.lable_RoundNo.Size = new System.Drawing.Size(57, 12);
            this.lable_RoundNo.TabIndex = 114;
            this.lable_RoundNo.Text = "Round No:";
            // 
            // txt_WorkOrderNo
            // 
            this.txt_WorkOrderNo.Location = new System.Drawing.Point(138, 144);
            this.txt_WorkOrderNo.Name = "txt_WorkOrderNo";
            this.txt_WorkOrderNo.Size = new System.Drawing.Size(147, 21);
            this.txt_WorkOrderNo.TabIndex = 124;
            this.txt_WorkOrderNo.Tag = "WorkOrderNo";
            // 
            // lable_WorkOrderNo
            // 
            this.lable_WorkOrderNo.AutoSize = true;
            this.lable_WorkOrderNo.Location = new System.Drawing.Point(53, 144);
            this.lable_WorkOrderNo.Name = "lable_WorkOrderNo";
            this.lable_WorkOrderNo.Size = new System.Drawing.Size(65, 12);
            this.lable_WorkOrderNo.TabIndex = 113;
            this.lable_WorkOrderNo.Text = "Work Order:";
            // 
            // txt_SalesOrderLine
            // 
            this.txt_SalesOrderLine.Location = new System.Drawing.Point(138, 117);
            this.txt_SalesOrderLine.Name = "txt_SalesOrderLine";
            this.txt_SalesOrderLine.Size = new System.Drawing.Size(147, 21);
            this.txt_SalesOrderLine.TabIndex = 123;
            this.txt_SalesOrderLine.Tag = "SalesOrderLine";
            // 
            // lable_SalesOrderLine
            // 
            this.lable_SalesOrderLine.AutoSize = true;
            this.lable_SalesOrderLine.Location = new System.Drawing.Point(53, 117);
            this.lable_SalesOrderLine.Name = "lable_SalesOrderLine";
            this.lable_SalesOrderLine.Size = new System.Drawing.Size(59, 12);
            this.lable_SalesOrderLine.TabIndex = 112;
            this.lable_SalesOrderLine.Text = "Order Line:";
            // 
            // txt_SalesOrderNo
            // 
            this.txt_SalesOrderNo.Location = new System.Drawing.Point(138, 90);
            this.txt_SalesOrderNo.Name = "txt_SalesOrderNo";
            this.txt_SalesOrderNo.Size = new System.Drawing.Size(147, 21);
            this.txt_SalesOrderNo.TabIndex = 122;
            this.txt_SalesOrderNo.Tag = "SalesOrderNo";
            // 
            // lable_SalesOrderNo
            // 
            this.lable_SalesOrderNo.AutoSize = true;
            this.lable_SalesOrderNo.Location = new System.Drawing.Point(53, 90);
            this.lable_SalesOrderNo.Name = "lable_SalesOrderNo";
            this.lable_SalesOrderNo.Size = new System.Drawing.Size(61, 12);
            this.lable_SalesOrderNo.TabIndex = 111;
            this.lable_SalesOrderNo.Text = "Sales Order:";
            // 
            // txt_Company
            // 
            this.txt_Company.Location = new System.Drawing.Point(138, 63);
            this.txt_Company.Name = "txt_Company";
            this.txt_Company.Size = new System.Drawing.Size(147, 21);
            this.txt_Company.TabIndex = 121;
            this.txt_Company.Tag = "Company";
            // 
            // lable_Company
            // 
            this.lable_Company.AutoSize = true;
            this.lable_Company.Location = new System.Drawing.Point(53, 63);
            this.lable_Company.Name = "lable_Company";
            this.lable_Company.Size = new System.Drawing.Size(54, 12);
            this.lable_Company.TabIndex = 110;
            this.lable_Company.Text = "Company:";
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(138, 171);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(147, 21);
            this.textEdit1.TabIndex = 133;
            this.textEdit1.Tag = "Ratio";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(53, 175);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 12);
            this.label1.TabIndex = 132;
            this.label1.Text = "Ratio:";
            // 
            // RoundWorkOrderDetailTemp1DetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_SampleQty);
            this.Controls.Add(this.lable_SampleQty);
            this.Controls.Add(this.txt_BulkQty);
            this.Controls.Add(this.lable_BulkQty);
            this.Controls.Add(this.txt_Size);
            this.Controls.Add(this.lable_Size);
            this.Controls.Add(this.txt_Cup);
            this.Controls.Add(this.lable_Cup);
            this.Controls.Add(this.txt_ColorCode);
            this.Controls.Add(this.lable_ColorCode);
            this.Controls.Add(this.txt_CustStyle);
            this.Controls.Add(this.lable_CustStyle);
            this.Controls.Add(this.txt_RoundNo);
            this.Controls.Add(this.lable_RoundNo);
            this.Controls.Add(this.txt_WorkOrderNo);
            this.Controls.Add(this.lable_WorkOrderNo);
            this.Controls.Add(this.txt_SalesOrderLine);
            this.Controls.Add(this.lable_SalesOrderLine);
            this.Controls.Add(this.txt_SalesOrderNo);
            this.Controls.Add(this.lable_SalesOrderNo);
            this.Controls.Add(this.txt_Company);
            this.Controls.Add(this.lable_Company);
            this.Name = "RoundWorkOrderDetailTemp1DetailForm";
            this.Size = new System.Drawing.Size(1055, 290);
            this.Controls.SetChildIndex(this.lable_Company, 0);
            this.Controls.SetChildIndex(this.txt_Company, 0);
            this.Controls.SetChildIndex(this.lable_SalesOrderNo, 0);
            this.Controls.SetChildIndex(this.txt_SalesOrderNo, 0);
            this.Controls.SetChildIndex(this.lable_SalesOrderLine, 0);
            this.Controls.SetChildIndex(this.txt_SalesOrderLine, 0);
            this.Controls.SetChildIndex(this.lable_WorkOrderNo, 0);
            this.Controls.SetChildIndex(this.txt_WorkOrderNo, 0);
            this.Controls.SetChildIndex(this.lable_RoundNo, 0);
            this.Controls.SetChildIndex(this.txt_RoundNo, 0);
            this.Controls.SetChildIndex(this.lable_CustStyle, 0);
            this.Controls.SetChildIndex(this.txt_CustStyle, 0);
            this.Controls.SetChildIndex(this.lable_ColorCode, 0);
            this.Controls.SetChildIndex(this.txt_ColorCode, 0);
            this.Controls.SetChildIndex(this.lable_Cup, 0);
            this.Controls.SetChildIndex(this.txt_Cup, 0);
            this.Controls.SetChildIndex(this.lable_Size, 0);
            this.Controls.SetChildIndex(this.txt_Size, 0);
            this.Controls.SetChildIndex(this.lable_BulkQty, 0);
            this.Controls.SetChildIndex(this.txt_BulkQty, 0);
            this.Controls.SetChildIndex(this.lable_SampleQty, 0);
            this.Controls.SetChildIndex(this.txt_SampleQty, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SampleQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_BulkQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Size.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Cup.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_ColorCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_CustStyle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_RoundNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_WorkOrderNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SalesOrderLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_SalesOrderNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txt_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }       

    }
}
