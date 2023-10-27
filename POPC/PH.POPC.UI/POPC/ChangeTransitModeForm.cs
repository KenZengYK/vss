using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;


namespace PH.POPC.UI.POPC
{
    public partial class ChangeTransitModeForm : DevExpress.XtraEditors.XtraForm
    {
        public ChangeTransitModeForm(PH.BasicInfo.BO.IncontermsTransit incontermsTransit, string oldMode)
        {
            InitializeComponent();
            this.IncontermsTransit = incontermsTransit;
            this.OldTranistMode = oldMode;
            InitValue();
        }

        public PH.BasicInfo.BO.IncontermsTransit IncontermsTransit { get; set; }

        public string OldTranistMode
        {
            get
            {
                return this.lbOldMode.Text;
            }
            set
            {
                this.lbOldMode.Text = value;
            }
        }

        public PH.BasicInfo.BO.TransitModeTransitPointChange NewModeChanged
        {
            get
            { 
                return this.lookUpEdit1.EditValue as PH.BasicInfo.BO.TransitModeTransitPointChange;
            }
        }

        private void InitValue()
        {
            //this.comboBoxEdit1.Properties.Items.Clear();

            var aa=from a in this.IncontermsTransit.SupplierProfile.TransitModeTransitPointChanges
                   where a.PHFactories == this.IncontermsTransit.PHFactories
                   && a.LocationofSuppFactory == this.IncontermsTransit.LocationofSuppFactory                   
                   select a;

            this.bindingSource1.DataSource = aa;
            this.lookUpEdit1.Properties.DataSource = this.bindingSource1;//在這裡需要用 bindingSource 才能顯示出數據

        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (NewLots <= OldLots)
            //{
            //    MessageBox.Show("New Lots must greater than Current Lots!", "Warning");
            //    return;
            //}

            this.DialogResult = DialogResult.OK;
        }
    }
}