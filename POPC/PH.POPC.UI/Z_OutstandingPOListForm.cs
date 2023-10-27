using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI
{
    public partial class Z_OutstandingPOListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public Z_OutstandingPOListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<POPCDataContext>();// 


            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Edit");
            if (obj == null)
            {
                barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                btnCopyRow.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;


                colBuyerCode.OptionsColumn.AllowEdit =
                colPONO.OptionsColumn.AllowEdit =
                colOrderLine.OptionsColumn.AllowEdit =
                colSplitNo.OptionsColumn.AllowEdit =
                colWhse.OptionsColumn.AllowEdit =
                colProjectNo.OptionsColumn.AllowEdit =
                colOurItemCode.OptionsColumn.AllowEdit =
                colCurrency.OptionsColumn.AllowEdit =
                colCoordinator.OptionsColumn.AllowEdit =
                colSuppCode.OptionsColumn.AllowEdit =
                colSuppItemCode.OptionsColumn.AllowEdit =
                colSupplierPOQty.OptionsColumn.AllowEdit =
                colPrice.OptionsColumn.AllowEdit =
                colBalPercent.OptionsColumn.AllowEdit =
                colUnit.OptionsColumn.AllowEdit =
                colSize.OptionsColumn.AllowEdit =
                colCup.OptionsColumn.AllowEdit =
                colOurColorCode.OptionsColumn.AllowEdit 
                = colPurchaseDate.OptionsColumn.AllowEdit
                = colPurchaseInvoiceOrPackingListNo.OptionsColumn.AllowEdit
                = colPurchaseQty.OptionsColumn.AllowEdit = false;

                
            }


            this.BindingSource.DataSource = (DataContext as POPCDataContext).Z_OutstandingPOs.OrderBy(p => p.PONO).ThenBy(p => p.OrderLine).ThenBy(p => p.SplitNo).ThenBy(p => p.OID);
            this.AllowGridEdit = true;

            
            
        }

        private void btnCopyRow_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("是否複製當前行?", "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            int CurrentRowIndex = bandedGridView1.GetDataSourceRowIndex(bandedGridView1.FocusedRowHandle);
            Z_OutstandingPO CurrentRowObj = bandedGridView1.GetFocusedRow() as Z_OutstandingPO;
            if (CurrentRowObj == null) return;

            Z_OutstandingPO obj = new Z_OutstandingPO();
            obj.BuyerCode = CurrentRowObj.BuyerCode;
            obj.PONO = CurrentRowObj.PONO;
            obj.OrderLine = CurrentRowObj.OrderLine;
            obj.SplitNo = CurrentRowObj.SplitNo + 1;
            obj.Whse = CurrentRowObj.Whse;
            obj.ProjectNo = CurrentRowObj.ProjectNo;
            obj.OurItemCode = CurrentRowObj.OurItemCode;
            obj.Currency = CurrentRowObj.Currency;
            obj.Coordinator = CurrentRowObj.Coordinator;
            obj.SuppCode = CurrentRowObj.SuppCode;
            obj.SuppItemCode = CurrentRowObj.SuppItemCode;
            obj.SupplierPOQty = CurrentRowObj.SupplierPOQty;
            obj.SupplierOutstandingQty = CurrentRowObj.SupplierOutstandingQty;
            obj.POBalancePercent = CurrentRowObj.POBalancePercent;
            obj.Unit = CurrentRowObj.Unit;
            obj.Size = CurrentRowObj.Size;
            obj.Cup = CurrentRowObj.Cup;
            obj.OurColorCode = CurrentRowObj.OurColorCode;

            obj.PurchaseDate = CurrentRowObj.PurchaseDate;
            obj.PurchaseInvoiceOrPackingListNo = CurrentRowObj.PurchaseInvoiceOrPackingListNo;
            obj.PurchaseQty = CurrentRowObj.PurchaseQty;
            obj.SLWhseDate = CurrentRowObj.SLWhseDate;
            obj.SLWhseDQty = CurrentRowObj.SLWhseDQty;
            obj.IQAPassQty = CurrentRowObj.IQAPassQty;
            obj.IQAFailQty = CurrentRowObj.IQAFailQty;
            obj.PPMCDate = CurrentRowObj.PPMCDate;
            obj.PPMCQty = CurrentRowObj.PPMCQty;
            obj.PPMCBalQty = CurrentRowObj.PPMCBalQty;
            obj.CuttingDate = CurrentRowObj.CuttingDate;
            obj.CuttingConfirmQty = CurrentRowObj.CuttingConfirmQty;
            obj.Remark = CurrentRowObj.Remark;


            //将复制行插入到当前选择行的后面一行
            if (this.bandedGridView1.IsLastRow)
            {
                this.BindingSource.Add(obj);
            }
            else
            {
                this.BindingSource.Insert(CurrentRowIndex + 1, obj);
            }

            bandedGridView1.MoveNext(); //定位到当前复制的新行
        }
    }
}
