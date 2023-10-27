using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MIDc.BO;

namespace PH.MIDc.UI.Other
{
    public partial class ImportTariffForm : DevExpress.XtraEditors.XtraForm
    {
        public ImportTariffForm()
        {
            InitializeComponent();
            InitData();
        }

        #region Fields

        public string Customer { get { return this.cbCustomer.Text; } }

        private string _ProjectFrom2 { get { return this.teProjectFrom2.Text; } }
        private string _ProjectTo2 { get { return this.teProjectTo2.Text; } }

        public string ProjectFrom { get { return string.IsNullOrEmpty(_ProjectFrom2) ? "" : string.Format("{0}{1}", this.Customer, this._ProjectFrom2); } }
        public string ProjectTo { get { return string.IsNullOrEmpty(_ProjectTo2) ? "" : string.Format("{0}{1}", this.Customer, this._ProjectTo2); } }

        public ImportTariffOption ImportTariffOption { get { return (ImportTariffOption)this.rgReportType.EditValue; } }
        public bool IsRMB { get { return Convert.ToBoolean(this.rgRMBOptiion.EditValue); } }

        #endregion

        #region Method

        private void InitData()
        {
            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MIDcDataContext>();
            List<string> custs = context.ExecuteQuery<string>("SELECT distinct left([CustomerCode],4) as Customer FROM [PH.RWO1].[dbo].[CustomerCode] order by Customer").ToList();


            this.cbCustomer.Properties.Items.Clear();
            //this.cbCustomer.Properties.Items.Add("ALL");
            //this.cbCustomer.Properties.Items.AddRange(_custs);
            foreach (var item in custs)
            {
                this.cbCustomer.Properties.Items.Add(item);
            }
            this.cbCustomer.EditValue = "";
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.Customer))
            {
                MessageBox.Show("Plese select a customer!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            this.DialogResult = DialogResult.OK;
        }

        #endregion

        private void cbCustomer_EditValueChanged(object sender, EventArgs e)
        {
            this.teProjectFrom1.Text = this.teProjectTo1.Text = this.Customer;
        }

    }
}