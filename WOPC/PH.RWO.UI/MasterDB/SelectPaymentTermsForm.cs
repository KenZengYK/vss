using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI.MasterDB
{
    public partial class SelectPaymentTermsForm : DevExpress.XtraEditors.XtraForm
    {

        string Customer;

        public SelectPaymentTermsForm()
        {
            InitializeComponent();
        }

        public SelectPaymentTermsForm(string ACust)
            : this()
        {
            Customer = ACust;

            string SqlStr = @"select a.Code, a.Description, b.Customer, b.Description as FromCustPODescription, b.Explanation as FromCustPOExplanation
from PaymentTerms as a
join PaymentTermsDetail as b on b.PaymentTermsOID = a.OID
order by a.Code, b.Customer";

            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.bsSelectPaymentTermsResult.DataSource = db.ExecuteQuery<SelectPaymentTermsResult>(SqlStr); //db.PaymentTerms;
        }

        public SelectPaymentTermsResult SelectPaymentTermsObj
        {
            get
            {
                return this.bsSelectPaymentTermsResult.Current as SelectPaymentTermsResult;
            }
        }

        private void gridControl1_Load(object sender, EventArgs e)
        {
            bandedGridView1.FocusedRowHandle = bandedGridView1.LocateByValue(0, colCustomer, Customer);
        }


        //public class SelectPaymentTermsResult
        //{
        //    public string Code { get; set; }
        //    public string Description { get; set; }

        //    public string Customer { get; set; }
        //    public string FromCustPODescription { get; set; }
        //    public string FromCustPOExplanation { get; set; }
        //}



    }
}