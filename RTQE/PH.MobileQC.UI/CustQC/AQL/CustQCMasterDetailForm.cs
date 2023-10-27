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
    public partial class CustQCMasterDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public CustQCMasterDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            string SqlStr = "select * from phdb..tbl_carte_actitem where code in ('C08a', 'C08b', 'C08c', 'C09a', 'C09b', 'C09c')";
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

            this.txtCatLogNO.Properties.DataSource = context.ExecuteDataTable(SqlStr, "dtCatLog");
            
            this.txtCatLogNO.Properties.ValueMember = "code";
            this.txtCatLogNO.Properties.DisplayMember = "code";

            CustQCMaster obj = this.BindingSource.Current as CustQCMaster;
            if (obj != null)
            {
                this.custQCDetailListForm1.BindingSource.DataSource = obj.CustQCDetails;
                //this.custQCDetailListForm1.EditorTypeName = typeof(CustQCDetailListForm).FullName;
            }
        }


        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();

            CustQCMaster obj = this.BindingSource.Current as CustQCMaster;
            if (string.IsNullOrEmpty(obj.MfgLocation))
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

                    CustQCMaster obj = this.BindingSource.Current as CustQCMaster;
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
