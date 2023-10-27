using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.Grid;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class PODetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public string VendorCode { get; set; }
        public POHeader CurrentPOHeader { get; set; }
        public int POType { get; set; }
        public bool IsSupplement { get; set; }

        public PODetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(PODetailDetailForm).FullName;
            base.DataBind();

            //this.POType = (this.ParentForm as POHeaderDetailForm).POType;

            this.colItemCode.Visible = POType == 1;
            this.colItemCodeVendor.Visible = POType == 1;
            this.colDescription.Visible = POType == 0;

            this.colMCType.Caption = POType == 1 ? "EQ Group" : "MC Type";
            this.colModelNo.Caption = POType == 1 ? "Spec" : "Model No";
        }

        private void barBtnImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //ImportMachineForm frmMachine = new ImportMachineForm(this.VendorCode);

            //int POType = (this.ParentForm as POHeaderDetailForm).POType;
            if (this.POType == 0)
            {
                ImportMachineForm frmMachine = new ImportMachineForm();
                if (frmMachine.ShowDialog() == DialogResult.OK)
                {
                    GridView grid = frmMachine.SelectGridView;
                    DataRowView dr = null;

                    int orderLine = this.CurrentPOHeader.PODetails.Count == 0 ? 0 : this.CurrentPOHeader.PODetails.Max(p => p.OrderLine);
                    orderLine += 1;

                    for (int i = 0; i < grid.DataRowCount; i++)
                    {
                        dr = (DataRowView)grid.GetRow(i);
                        if (Convert.ToBoolean(dr["CheckFlag"]))
                        {
                            PODetail detail = (PODetail)this.BindingSource.AddNew();
                            detail.PONO = this.CurrentPOHeader.PONO;
                            detail.AmendNo = this.CurrentPOHeader.AmendNo;
                            detail.OrderLine = orderLine;
                            detail.MCType = dr["TypeCode"].ToString();
                            detail.ModelNo = dr["Model"].ToString();
                            detail.HSCode = dr["HSCode"].ToString();
                            detail.Brand = dr["Brand"].ToString();
                            detail.Item_CN = dr["TypeDesc_TW"].ToString();
                            detail.Item_EN = dr["TypeDesc_EN"].ToString();
                            detail.Description = "Brand New Capital Machinery for Hundred Percent Export Oriented Garments Industry." + Environment.NewLine +
                                dr["TypeDesc_EN"].ToString() + Environment.NewLine + Environment.NewLine +
                                dr["TypeDesc_TW"].ToString();

                            //detail.UnitPrice = Convert.ToDouble(dr["Price"]);
                            if (dr["Price"] != null && dr["Price"] != DBNull.Value)
                            {
                                detail.UnitPrice = Convert.ToDouble(dr["Price"]);
                            }

                            detail.IsSupplement = this.IsSupplement;
                            this.CurrentPOHeader.PODetails.Add(detail);
                            orderLine++;

                            this.CurrentPOHeader.FinalVendorCode = dr["VendorCode"].ToString();
                        }
                    }
                    (this.DataContext as RAPLQDataContext).SubmitChanges();
                }
            }
            else if (this.POType == 1)
            {
                ImportEquipmentForm frmEquipment = new ImportEquipmentForm();
                if (frmEquipment.ShowDialog() == DialogResult.OK)
                {
                    GridView grid = frmEquipment.SelectGridView;
                    DataRowView dr = null;

                    int orderLine = this.CurrentPOHeader.PODetails.Count == 0 ? 0 : this.CurrentPOHeader.PODetails.Max(p => p.OrderLine);
                    orderLine += 1;

                    for (int i = 0; i < grid.DataRowCount; i++)
                    {
                        dr = (DataRowView)grid.GetRow(i);
                        if (Convert.ToBoolean(dr["CheckFlag"]))
                        {
                            PODetail detail = (PODetail)this.BindingSource.AddNew();
                            //"select ItemCode, EQGroup, UserDept, Item_CN, Item_EN, Spec, ItemCodeVendor, HSCode, Price, Brand, convert(bit, 0) as CheckFlag " +
                            detail.PONO = this.CurrentPOHeader.PONO;
                            detail.AmendNo = this.CurrentPOHeader.AmendNo;
                            detail.OrderLine = orderLine;
                            detail.MCType = dr["EQGroupCode"].ToString();
                            detail.ModelNo = dr["Spec"].ToString();
                            detail.HSCode = dr["HSCode"].ToString();
                            detail.Brand = dr["Brand"].ToString();
                            detail.UserDept = dr["UserDept"].ToString();
                            detail.ItemCodeVendor = dr["ItemCodeVendor"].ToString();
                            detail.ItemCode = dr["ItemCode"].ToString();
                            detail.Item_CN = dr["Item_CN"].ToString();
                            detail.Item_EN = dr["Item_EN"].ToString();

                            detail.Description = dr["Item_CN"].ToString() + Environment.NewLine + dr["Item_EN"].ToString();
                            if (dr["Price"] != null && dr["Price"] != DBNull.Value)
                            {
                                detail.UnitPrice = Convert.ToDouble(dr["Price"]);
                            }
                            detail.IsSupplement = this.IsSupplement;
                            this.CurrentPOHeader.PODetails.Add(detail);
                            orderLine++;

                            //因為Equipment只有General PO，所以VendorCode和FinalVendorCode都是一個
                            this.CurrentPOHeader.FinalVendorCode = this.CurrentPOHeader.VendorCode;
                        }
                    }
                    (this.DataContext as RAPLQDataContext).SubmitChanges();
                }
            }
        }
    }
}
