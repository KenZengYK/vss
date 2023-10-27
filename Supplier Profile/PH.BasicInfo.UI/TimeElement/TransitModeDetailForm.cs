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
    public partial class TransitModeDetailForm : DetailForm 
    {
        public TransitModeDetailForm()
        {
            InitializeComponent();
        }

        private void TransitModeDetailForm_Load(object sender, EventArgs e)
        {
            //var ITs = (this.DataContext as BasicInfoDataContext).Incoterms.ToList();
            //ITs.Insert(0, new Incoterm());
            //incotermsLookUpEdit.Properties.DataSource = ITs;
            var FPs = (this.DataContext as BasicInfoDataContext).ForPointDeliveryofDestinationPHKeys.ToList();
            FPs.Insert(0, new ForPointDeliveryofDestinationPHKey());
            pointofDestinationLookUpEdit.Properties.DataSource = FPs;
            
            var SFs = (this.DataContext as BasicInfoDataContext).SupplierFactories.Where(P => P.ERPSupplier == (this.BindingSource.Current as TransitModeTransitPointChange).ERPSupplier).ToList();
            SFs.Insert(0, new SupplierFactory());
            locationofSuppFactoryLookUpEdit.Properties.DataSource = SFs;
            transitModeComboBoxEdit.Properties.Items.AddRange(ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TransitMode").Select(S => S.DataName).ToArray());
            //transitModeComboBoxEdit.Properties.Items.Add(new Misc_DataDictionary());            
        }

        private void pointofDestinationLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            string address = Convert.ToString(pointofDestinationLookUpEdit.EditValue).Trim();
            this.panel_9.Visible = address == "9";
            this.panelAddress.Visible = address != "9";
            pointOfDestinationENMemoEdit.Text = Convert.ToString(pointofDestinationLookUpEdit.Text);
        }
    }
}
