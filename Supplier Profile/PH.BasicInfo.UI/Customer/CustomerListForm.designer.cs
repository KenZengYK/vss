namespace PH.BasicInfo.UI 
{
     partial class CustomerListForm : PH.Platform.UI.CS.UI2.ListForm
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
              components = new System.ComponentModel.Container();
              this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
              this.Columns_CustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_CustomerName = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_CustomerAddress = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_CustomerTelePhone = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_CustomerRepresent = new DevExpress.XtraGrid.Columns.GridColumn();
              this.Columns_UnitPriceMethod = new DevExpress.XtraGrid.Columns.GridColumn();
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
              this.SuspendLayout();  
              //  
              // ObjListBar 
              //  
              this.ObjListBar.Appearance.Options.UseTextOptions = true; 
              // 
              // objListGridControl
              // 
              this.objListGridControl.EmbeddedNavigator.Name = ""; 
              //  
              // objListGridView 
              //  
              this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {  
              this.Columns_CustomerCode, 
              this.Columns_CustomerName, 
              this.Columns_CustomerAddress, 
              this.Columns_CustomerTelePhone, 
              this.Columns_CustomerRepresent, 
              this.Columns_UnitPriceMethod, 
              } );
              this.objListGridView.OptionsBehavior.Editable = false; 
              this.objListGridView.OptionsDetail.EnableMasterViewMode = false; 
              this.objListGridView.OptionsPrint.AutoWidth = false; 
              this.objListGridView.OptionsView.ColumnAutoWidth = false;           
              // 
              // Columns_CustomerCode
              // 
              this.Columns_CustomerCode.Caption =  "Customer Code" ;
              this.Columns_CustomerCode.FieldName = "CustomerCode";
              this.Columns_CustomerCode.Name = "Columns_CustomerCode";
              this.Columns_CustomerCode.Visible = true; 
              this.Columns_CustomerCode.VisibleIndex = 0; 
              // 
              // Columns_CustomerName
              // 
              this.Columns_CustomerName.Caption =  "Customer Name" ;
              this.Columns_CustomerName.FieldName = "CustomerName";
              this.Columns_CustomerName.Name = "Columns_CustomerName";
              this.Columns_CustomerName.Visible = true; 
              this.Columns_CustomerName.VisibleIndex = 0; 
              // 
              // Columns_CustomerAddress
              // 
              this.Columns_CustomerAddress.Caption =  "Customer Address" ;
              this.Columns_CustomerAddress.FieldName = "CustomerAddress";
              this.Columns_CustomerAddress.Name = "Columns_CustomerAddress";
              this.Columns_CustomerAddress.Visible = true; 
              this.Columns_CustomerAddress.VisibleIndex = 0; 
              // 
              // Columns_CustomerTelePhone
              // 
              this.Columns_CustomerTelePhone.Caption =  "Customer Tele Phone" ;
              this.Columns_CustomerTelePhone.FieldName = "CustomerTelePhone";
              this.Columns_CustomerTelePhone.Name = "Columns_CustomerTelePhone";
              this.Columns_CustomerTelePhone.Visible = true; 
              this.Columns_CustomerTelePhone.VisibleIndex = 0; 
              // 
              // Columns_CustomerRepresent
              // 
              this.Columns_CustomerRepresent.Caption =  "Customer Represent" ;
              this.Columns_CustomerRepresent.FieldName = "CustomerRepresent";
              this.Columns_CustomerRepresent.Name = "Columns_CustomerRepresent";
              this.Columns_CustomerRepresent.Visible = true; 
              this.Columns_CustomerRepresent.VisibleIndex = 0; 
              // 
              // Columns_UnitPriceMethod
              // 
              this.Columns_UnitPriceMethod.AppearanceCell.Options.UseTextOptions = true;
              this.Columns_UnitPriceMethod.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
              this.Columns_UnitPriceMethod.Caption =  "Unit Price Method" ;
              this.Columns_UnitPriceMethod.FieldName = "UnitPriceMethod";
              this.Columns_UnitPriceMethod.Name = "Columns_UnitPriceMethod";
              this.Columns_UnitPriceMethod.Visible = true; 
              this.Columns_UnitPriceMethod.VisibleIndex = 0; 
              //  
              // CustomerListForm 
              //  
              this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F); 
              this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font; 
              this.Name = "CustomerListForm"; 
              ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit(); 
              ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit(); 
              ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit(); 
              this.ResumeLayout(false); 
          }

          #endregion

          private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomerCode;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomerName;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomerAddress;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomerTelePhone;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_CustomerRepresent;
          private DevExpress.XtraGrid.Columns.GridColumn Columns_UnitPriceMethod;

     }
}

