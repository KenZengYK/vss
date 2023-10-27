namespace PH.BasicInfo.UI 
{
     partial class CustomerDetailForm 
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
              this.txtD_CustomerCode =  new DevExpress.XtraEditors.TextEdit();
              this.CustomerCodeLabel = new System.Windows.Forms.Label();
              this.txtD_CustomerName =  new DevExpress.XtraEditors.TextEdit();
              this.CustomerNameLabel = new System.Windows.Forms.Label();
              this.txtD_CustomerAddress =  new DevExpress.XtraEditors.TextEdit();
              this.CustomerAddressLabel = new System.Windows.Forms.Label();
              this.txtD_CustomerTelePhone =  new DevExpress.XtraEditors.TextEdit();
              this.CustomerTelePhoneLabel = new System.Windows.Forms.Label();
              this.txtD_CustomerRepresent =  new DevExpress.XtraEditors.TextEdit();
              this.CustomerRepresentLabel = new System.Windows.Forms.Label();
              this.sptD_UnitPriceMethod =  new DevExpress.XtraEditors.SpinEdit();
              this.UnitPriceMethodLabel = new System.Windows.Forms.Label();

              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerCode.Properties)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerName.Properties)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerAddress.Properties)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerTelePhone.Properties)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerRepresent.Properties)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.sptD_UnitPriceMethod.Properties)).BeginInit();
              // 
              // BindingSource
              // 
              this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.Customer);
              //
              // CustomerCodeLabel
              //
              this.CustomerCodeLabel.AutoSize = false;
              this.CustomerCodeLabel.Location = new System.Drawing.Point( 20, 30);
              this.CustomerCodeLabel.Name = "CustomerCodeLabel" ;
              this.CustomerCodeLabel.Size = new System.Drawing.Size(130, 21); 
              this.CustomerCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.CustomerCodeLabel.TabIndex = 7; 
              this.CustomerCodeLabel.Text = "Customer Code";  
              this.Controls.Add(this.CustomerCodeLabel);
              this.Controls.SetChildIndex(this.CustomerCodeLabel, 0); 
              //  
              // txtD_CustomerCode 
              //  
              this.txtD_CustomerCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerCode", true));
              this.txtD_CustomerCode.Location = new System.Drawing.Point(170,  30);
              this.txtD_CustomerCode.Name = "txtD_CustomerCode"; 
              this.txtD_CustomerCode.Size = new System.Drawing.Size(160, 21);
              this.txtD_CustomerCode.TabIndex = 1;
              this.Controls.Add(this.txtD_CustomerCode);
              this.Controls.SetChildIndex(this.txtD_CustomerCode, 0);
              //
              // CustomerNameLabel
              //
              this.CustomerNameLabel.AutoSize = false;
              this.CustomerNameLabel.Location = new System.Drawing.Point( 20, 58);
              this.CustomerNameLabel.Name = "CustomerNameLabel" ;
              this.CustomerNameLabel.Size = new System.Drawing.Size(130, 21); 
              this.CustomerNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.CustomerNameLabel.TabIndex = 8; 
              this.CustomerNameLabel.Text = "Customer Name";  
              this.Controls.Add(this.CustomerNameLabel);
              this.Controls.SetChildIndex(this.CustomerNameLabel, 0); 
              //  
              // txtD_CustomerName 
              //  
              this.txtD_CustomerName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerName", true));
              this.txtD_CustomerName.Location = new System.Drawing.Point(170,  58);
              this.txtD_CustomerName.Name = "txtD_CustomerName"; 
              this.txtD_CustomerName.Size = new System.Drawing.Size(160, 21);
              this.txtD_CustomerName.TabIndex = 2;
              this.Controls.Add(this.txtD_CustomerName);
              this.Controls.SetChildIndex(this.txtD_CustomerName, 0);
              //
              // CustomerAddressLabel
              //
              this.CustomerAddressLabel.AutoSize = false;
              this.CustomerAddressLabel.Location = new System.Drawing.Point( 20, 86);
              this.CustomerAddressLabel.Name = "CustomerAddressLabel" ;
              this.CustomerAddressLabel.Size = new System.Drawing.Size(130, 21); 
              this.CustomerAddressLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.CustomerAddressLabel.TabIndex = 9; 
              this.CustomerAddressLabel.Text = "Customer Address";  
              this.Controls.Add(this.CustomerAddressLabel);
              this.Controls.SetChildIndex(this.CustomerAddressLabel, 0); 
              //  
              // txtD_CustomerAddress 
              //  
              this.txtD_CustomerAddress.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerAddress", true));
              this.txtD_CustomerAddress.Location = new System.Drawing.Point(170,  86);
              this.txtD_CustomerAddress.Name = "txtD_CustomerAddress"; 
              this.txtD_CustomerAddress.Size = new System.Drawing.Size(160, 21);
              this.txtD_CustomerAddress.TabIndex = 3;
              this.Controls.Add(this.txtD_CustomerAddress);
              this.Controls.SetChildIndex(this.txtD_CustomerAddress, 0);
              //
              // CustomerTelePhoneLabel
              //
              this.CustomerTelePhoneLabel.AutoSize = false;
              this.CustomerTelePhoneLabel.Location = new System.Drawing.Point( 20, 114);
              this.CustomerTelePhoneLabel.Name = "CustomerTelePhoneLabel" ;
              this.CustomerTelePhoneLabel.Size = new System.Drawing.Size(130, 21); 
              this.CustomerTelePhoneLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.CustomerTelePhoneLabel.TabIndex = 10; 
              this.CustomerTelePhoneLabel.Text = "Customer Tele Phone";  
              this.Controls.Add(this.CustomerTelePhoneLabel);
              this.Controls.SetChildIndex(this.CustomerTelePhoneLabel, 0); 
              //  
              // txtD_CustomerTelePhone 
              //  
              this.txtD_CustomerTelePhone.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerTelePhone", true));
              this.txtD_CustomerTelePhone.Location = new System.Drawing.Point(170,  114);
              this.txtD_CustomerTelePhone.Name = "txtD_CustomerTelePhone"; 
              this.txtD_CustomerTelePhone.Size = new System.Drawing.Size(160, 21);
              this.txtD_CustomerTelePhone.TabIndex = 4;
              this.Controls.Add(this.txtD_CustomerTelePhone);
              this.Controls.SetChildIndex(this.txtD_CustomerTelePhone, 0);
              //
              // CustomerRepresentLabel
              //
              this.CustomerRepresentLabel.AutoSize = false;
              this.CustomerRepresentLabel.Location = new System.Drawing.Point( 20, 142);
              this.CustomerRepresentLabel.Name = "CustomerRepresentLabel" ;
              this.CustomerRepresentLabel.Size = new System.Drawing.Size(130, 21); 
              this.CustomerRepresentLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.CustomerRepresentLabel.TabIndex = 11; 
              this.CustomerRepresentLabel.Text = "Customer Represent";  
              this.Controls.Add(this.CustomerRepresentLabel);
              this.Controls.SetChildIndex(this.CustomerRepresentLabel, 0); 
              //  
              // txtD_CustomerRepresent 
              //  
              this.txtD_CustomerRepresent.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CustomerRepresent", true));
              this.txtD_CustomerRepresent.Location = new System.Drawing.Point(170,  142);
              this.txtD_CustomerRepresent.Name = "txtD_CustomerRepresent"; 
              this.txtD_CustomerRepresent.Size = new System.Drawing.Size(160, 21);
              this.txtD_CustomerRepresent.TabIndex = 5;
              this.Controls.Add(this.txtD_CustomerRepresent);
              this.Controls.SetChildIndex(this.txtD_CustomerRepresent, 0);
              //
              // UnitPriceMethodLabel
              //
              this.UnitPriceMethodLabel.AutoSize = false;
              this.UnitPriceMethodLabel.Location = new System.Drawing.Point( 20, 170);
              this.UnitPriceMethodLabel.Name = "UnitPriceMethodLabel" ;
              this.UnitPriceMethodLabel.Size = new System.Drawing.Size(130, 21); 
              this.UnitPriceMethodLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight; 
              this.UnitPriceMethodLabel.TabIndex = 12; 
              this.UnitPriceMethodLabel.Text = "Unit Price Method";  
              this.Controls.Add(this.UnitPriceMethodLabel);
              this.Controls.SetChildIndex(this.UnitPriceMethodLabel, 0); 
              //  
              // sptD_UnitPriceMethod 
              //  
              this.sptD_UnitPriceMethod.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UnitPriceMethod", true));
              this.sptD_UnitPriceMethod.Location = new System.Drawing.Point(170,  170);
              this.sptD_UnitPriceMethod.Name = "sptD_UnitPriceMethod"; 
              this.sptD_UnitPriceMethod.Size = new System.Drawing.Size(160, 21);
              this.sptD_UnitPriceMethod.TabIndex = 6;
              this.Controls.Add(this.sptD_UnitPriceMethod);
              this.Controls.SetChildIndex(this.sptD_UnitPriceMethod, 0);

              this.Name = "CustomerDetailForm"; 
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerCode.Properties)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerName.Properties)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerAddress.Properties)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerTelePhone.Properties)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.txtD_CustomerRepresent.Properties)).EndInit();
              ((System.ComponentModel.ISupportInitialize)(this.sptD_UnitPriceMethod.Properties)).EndInit();
          }

          #endregion

          private DevExpress.XtraEditors.TextEdit  txtD_CustomerCode;
          private System.Windows.Forms.Label CustomerCodeLabel;
          private DevExpress.XtraEditors.TextEdit  txtD_CustomerName;
          private System.Windows.Forms.Label CustomerNameLabel;
          private DevExpress.XtraEditors.TextEdit  txtD_CustomerAddress;
          private System.Windows.Forms.Label CustomerAddressLabel;
          private DevExpress.XtraEditors.TextEdit  txtD_CustomerTelePhone;
          private System.Windows.Forms.Label CustomerTelePhoneLabel;
          private DevExpress.XtraEditors.TextEdit  txtD_CustomerRepresent;
          private System.Windows.Forms.Label CustomerRepresentLabel;
          private DevExpress.XtraEditors.SpinEdit  sptD_UnitPriceMethod;
          private System.Windows.Forms.Label UnitPriceMethodLabel;

     }
}

