using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class DateRangeForm : DevExpress.XtraEditors.XtraForm
    {
        public DateRangeForm()
        {
            InitializeComponent();
            BindingCustomer();
            InitDateShowMode();
        }

        public string Customer { get { return this.cbCustomer.Text; } }
        public ProjectStatusGroupby StatusGroupBy { get { int i = Convert.ToInt32(this.rgStatusGroupBy.EditValue); return (ProjectStatusGroupby)i; } }
        public DateTime WOCompletedDateFrom
        {
            get
            {
                SwitchDateTime(deWOCompletedFrom, deWOCompletedTo);
                return this.deWOCompletedFrom.DateTime;
            }
        }
        public DateTime WOCompletedDateTo
        {
            get
            {
                SwitchDateTime(deWOCompletedFrom, deWOCompletedTo);
                return this.deWOCompletedTo.DateTime;
            }
        }

        public DateTime DeliveryDateFrom
        {
            get
            {
                SwitchDateTime(deDeliveyDateFrom, deDeliveyDateTo);
                return this.deDeliveyDateFrom.DateTime;
            }
        }
        public DateTime DeliveryDateTo
        {
            get
            {
                SwitchDateTime(deDeliveyDateFrom, deDeliveyDateTo);
                return this.deDeliveyDateTo.DateTime;
            }
        }


        private void SwitchDateTime(DateEdit deFrom, DateEdit deTo)
        {
            DateTime dt1 = deFrom.DateTime;
            DateTime dt2 = deTo.DateTime;
            if (dt1 == DateTime.MinValue) dt1 = dt2;
            if (dt2 == DateTime.MinValue) dt2 = dt1;

            DateTime dt = dt1;
            if (dt1 > dt2) { dt1 = dt2; dt2 = dt; }
            deFrom.DateTime = dt1;
            deTo.DateTime = dt2;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(Customer) && DateFrom == DateTime.MinValue)
            //{
            //    MessageBox.Show("Must input a Criteria!");
            //    return;
            //}

            this.DialogResult = DialogResult.OK;
        }

        private void BindingCustomer()
        {
            PH.RWO.BO.CustomerCodeList list = new PH.RWO.BO.CustomerCodeList();
            //var aa = list.GetCustomers();
            var aa = list.GetDistinctCustomers();
            foreach (var a in aa)
            {
                this.cbCustomer.Properties.Items.Add(a);
            }

        }

        private void InitDateShowMode()
        {

#if Platform2014
            this.deWOCompletedFrom.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
            this.deWOCompletedTo.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
            this.deDeliveyDateFrom.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
            this.deDeliveyDateTo.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
#else
            this.deWOCompletedFrom.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
            this.deWOCompletedTo.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
            this.deDeliveyDateFrom.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
            this.deDeliveyDateTo.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
#endif
        }
    }
}