using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.BasicInfo.BO;
using PH.Platform.Misc.BO;
namespace PH.BasicInfo.UI.TimeElement
{
    public partial class ChildListXEditFrm : DetailForm
    {
        public ChildListXEditFrm()
        {
            InitializeComponent();

        }

        private string _supplierType;
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            forwarderAddressENOthsMemoExEdit.Properties.ReadOnly = true;
            forwarderAddressCHOthsMemoExEdit.Properties.ReadOnly = true;
            forwarderAddressTHOthsMemoExEdit.Properties.ReadOnly = true;

        }
        private void ChildListXEditFrm_Load(object sender, EventArgs e)
        {
            var ITs = (this.DataContext as BasicInfoDataContext).Incoterms.ToList();
            ITs.Insert(0, new Incoterm());
            incotermsLookUpEdit.Properties.DataSource = ITs;
            var FPs = (this.DataContext as BasicInfoDataContext).ForPointDeliveryofDestinationPHKeys.ToList();
            FPs.Insert(0, new ForPointDeliveryofDestinationPHKey());
            pointofDestinationLookUpEdit.Properties.DataSource = FPs;
            FCLPointofDestinationlookUpEdit.Properties.DataSource = FPs;

            SupplierDetailForm suppDetailFrm = this.PrevForm as SupplierDetailForm;
            this._supplierType = suppDetailFrm.CurrSupplierType;
            if (string.IsNullOrEmpty(this._supplierType))
            {
                var SFs = (this.DataContext as BasicInfoDataContext).SupplierFactories.Where(P => P.ERPSupplier == (this.BindingSource.Current as IncontermsTransit).ERPSupplier).ToList();
                SFs.Insert(0, new SupplierFactory());
                locationofSuppFactoryLookUpEdit.Properties.DataSource = SFs;
            }
            else if (this._supplierType.ToUpper() == "MIDC")
            {
                var SFs = (this.DataContext as BasicInfoDataContext).SupplierFactories.Where(P => P.ERPSupplier == (this.BindingSource.Current as IncontermsTransitForMIDc).ERPSupplier).ToList();
                SFs.Insert(0, new SupplierFactory());
                locationofSuppFactoryLookUpEdit.Properties.DataSource = SFs;
            }
            transitModeComboBoxEdit.Properties.Items.AddRange(ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TransitMode").Select(S => S.DataName).ToArray());

            ShowFCL();
            this.EnableAgreedRequest();


            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            txtDeliveryRouting.Properties.DataSource = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.DeliveryRouting");
            txtDeliveryRouting.Properties.ValueMember = "DataCode";
            txtDeliveryRouting.Properties.DisplayMember = "DataCode";


            //由David增加 2022-04-22
            txtPointofDestination.Properties.DataSource = (DataContext as BasicInfoDataContext).TimeFrameIICompanies;
            txtFCLPointofDestination.Properties.DataSource = (DataContext as BasicInfoDataContext).TimeFrameIICompanies;
        }
        protected override void OnClickSave()
        {
            if (ValidationSaveCondition())
            {
                return;
            }

            if (string.IsNullOrEmpty(this.txtSeqNo.Text))
            {
                MessageBox.Show("SeqNo不能爲空！", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            base.OnClickSave();
        }
        protected override void OnClickSaveAndReturn()
        {
            if (ValidationSaveCondition())
            {
                return;
            }
            if (string.IsNullOrEmpty(this.txtSeqNo.Text))
            {
                MessageBox.Show("SeqNo不能爲空！", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            base.OnClickSaveAndReturn();
        }
        private void pHFactoriesComboBoxEdit_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        private Boolean ValidationSaveCondition()
        {
            bool IsNew = false;
            if (string.IsNullOrEmpty(this._supplierType))
            {
                IsNew = ((this.BindingSource.Current as IncontermsTransit).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New);
            }
            else if (this._supplierType.ToUpper() == "MIDC")
            {
                IsNew = ((this.BindingSource.Current as IncontermsTransitForMIDc).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New);
            }
            if (IsNew)
            {
                if (locationofSuppFactoryLookUpEdit.Text.Trim() == string.Empty)
                {
                    if (MessageBox.Show("Please input\"Location of Supp Factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        return true;
                    }
                }
                if (pHFactoriesComboBoxEdit.Text.Trim() == string.Empty)
                {
                    if (MessageBox.Show("Please input\"Factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        return true;
                    }
                }

            }

            return false;
        }

        private void exmillCountryProvinceTextEdit_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void pointofDestinationLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            ////string address = pointofDestinationLookUpEdit.EditValue.ToString().Trim();
            //string address = Convert.ToString(pointofDestinationLookUpEdit.EditValue).Trim();
            //this.panel_9.Visible = address == "9";
            //this.panelAddress.Visible = address != "9";
            //pointofDestinationENMemoEdit.Text = Convert.ToString(pointofDestinationLookUpEdit.Text);

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void lookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void FCLAgreedRequestCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            this.EnableAgreedRequest();

        }

        private void FCLTransitPointChangeNecessityCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            ShowFCL();


        }

        void ShowFCL()
        {
            if (FCLTransitPointChangeNecessityCheckEdit.Checked)
                xtraTabControl1.TabPages.Add(TabTransitPointChange);
            else
                xtraTabControl1.TabPages.Remove(TabTransitPointChange);
        }
        void EnableAgreedRequest()
        {
            if (FCLAgreedRequestCheckEdit.Checked)
            {
                FCLTransitPointChangeNecessityCheckEdit.Properties.ReadOnly = false;

            }
            else
            { FCLTransitPointChangeNecessityCheckEdit.Properties.ReadOnly = true; FCLTransitPointChangeNecessityCheckEdit.Checked = false; }
        }

        private void FCLPointofDestinationlookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            string address = Convert.ToString(FCLPointofDestinationlookUpEdit.EditValue).Trim();
            this.panel_91.Visible = address == "9";
            this.panelAddress1.Visible = address != "9";
            FCLPointOfDestinationENmemoEdit.Text = Convert.ToString(FCLPointofDestinationlookUpEdit.Text);
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            txtEndPointDescription.Properties.ReadOnly = true;
            txtEndPointAddress.Properties.ReadOnly = true;
        }

        private void pointOfOriginTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                pointOfOriginTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
                pointOfOriginAddressMemoExEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionNameEN;
            }
        }

        private void placeOfOriginTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                placeOfOriginTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
            }
        }

        private void pointBorderOfOriginTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                pointBorderOfOriginTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
            }
        }

        private void portBorderOfDestinationTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                portBorderOfDestinationTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
            }
        }

        private void placeOfDestinationTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                placeOfDestinationTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
            }
        }

        private void pointOfDestination6PTextEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                pointOfDestination6PTextEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
                pointOfDestinationAddressMemoExEdit.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionNameEN;
            }
        }

        private void txtTransitPointRegionCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectRegionForm frmSelectRegion = new SelectRegionForm();
            if (frmSelectRegion.ShowDialog() == DialogResult.OK)
            {
                txtTransitPointRegionCode.EditValue = frmSelectRegion.SelectedSupplierRegionObj.RegionCode;
            }
        }

        private void txtStandard1_EditValueChanged(object sender, EventArgs e)
        {
            if (txtStandard1.Text == "Y")
            {
                txtNonStandard1.EditValue = null;
            }
        }

        private void txtNonStandard1_EditValueChanged(object sender, EventArgs e)
        {
            if (txtNonStandard1.Text == "Y")
            {
                txtStandard1.EditValue = null;
            }
        }




    }
}
