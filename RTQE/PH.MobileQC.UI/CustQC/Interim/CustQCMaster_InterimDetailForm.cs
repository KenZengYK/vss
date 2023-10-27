using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCMaster_InterimDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public CustQCMaster_InterimDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            string SqlStr = "select * from phdb..tbl_carte_actitem where code in ('C08a', 'C08b', 'C08c', 'C09a', 'C09b', 'C09c')";
            this.txtCatLogNO.Properties.DataSource = (this.DataContext as MobileQCDataContext).ExecuteDataTable(SqlStr, "dtCatLog");
            this.txtCatLogNO.Properties.ValueMember = "code";
            this.txtCatLogNO.Properties.DisplayMember = "code";

            CustQCMaster_Interim obj = this.BindingSource.Current as CustQCMaster_Interim;
            if (obj != null)
            {
                this.custQCDetail_InterimListForm1.BindingSource.DataSource = obj.CustQCDetail_Interims;
            }
        }

        protected override void SaveCurrent()
        {
          CustQCMaster_Interim obj = this.BindingSource.Current as CustQCMaster_Interim;
            if(string.IsNullOrEmpty(obj.MfgLocation))            
            {
                MessageBox.Show("Mfg. loc. 不能爲空");
                return;
            }

            if (string.IsNullOrEmpty(obj.Customer))
            {
                MessageBox.Show("Customer 不能爲空");
                return;
            }

            if (string.IsNullOrEmpty(obj.SampleSizeQty.ToString()))
            {
                MessageBox.Show("Lot Size Qty 不能爲空");
                return;
            }


            base.SaveCurrent();
        }

        private void txtCustomerPO_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                SelectCustomerPOForm frmCustomerPO = new SelectCustomerPOForm();
                if (frmCustomerPO.ShowDialog() == DialogResult.OK)
                {
                    frmCustomerPO.GenerateChosenData();
                  
                    CustQCMaster_Interim obj = this.BindingSource.Current as CustQCMaster_Interim;
                    obj.CustomerPO = frmCustomerPO.SelectedCustomerPOs;
                    obj.CustStyle = frmCustomerPO.SelectedCustStyles;
                    obj.ProjectNO = frmCustomerPO.SelectedProjects;
                    obj.Color = frmCustomerPO.SelectedColors;
                    obj.ResponsibleDept = frmCustomerPO.SelectedWorkshopAndLines;
                    obj.WO = frmCustomerPO.SelectedWOs;
                    obj.POQty = frmCustomerPO.POQty ?? 0;
                    obj.ProductType = frmCustomerPO.SelectedProductTypes;
                    obj.ShipmentColorQty = frmCustomerPO.ShipmentColorCount;
                    obj.ShipmentSizeQty = frmCustomerPO.ShipmentSizeCount;

                    obj.MfgLocation = frmCustomerPO.MfgLoc.Trim();
                    obj.ShipmentDate = frmCustomerPO.ShptDate;
                    obj.ShipmentPOQty = frmCustomerPO.PoInShpt;
                    obj.ShipmentStyleQty = frmCustomerPO.StyleInShpt;
                    obj.LogQty = frmCustomerPO.LogOfNub;
                    obj.Customer = frmCustomerPO.Customer;

                    if ((obj.SampleSizeQty ?? 0) == 0)
                    {
                        obj.SampleSizeQty = obj.POQty;
                    }
                }
            }
        }
    }
}
