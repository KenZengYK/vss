using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Globalization;

namespace PH.FabricInspection.UI
{
    public partial class GetListFromDate : Form
    {
        public string FromDateTimeStr
        {
            get
            {
                string result = null;
                if (this.FromDateTime != null)
                {
                    string timeFormat = "yyMMdd";
                    DateTime time = (DateTime)this.FromDateTime;
                    result = time.ToString(timeFormat, new CultureInfo("en-US"));
                }
                return result;
            }
        }


        public string EndDateTimeStr
        {
            get
            {
                string result = null;
                if (this.EndDateTime != null)
                {
                    string timeFormat = "yyMMdd";
                    DateTime time = (DateTime)this.EndDateTime;
                    result = time.ToString(timeFormat, new CultureInfo("en-US"));
                }
                return result;
            }
        }


        public DateTime FromDateTime
        {
            get
            {
                return (DateTime)this.dateEdit_FromDate.EditValue;
            }
        }

        public DateTime EndDateTime
        {
            get
            {
                return (DateTime)this.dateEdit_EndDate.EditValue;
            }
        }

        public GetListFromDate(DateTime? FromDate, DateTime? EndDate)
        {
            InitializeComponent();

            if (FromDate == null)
            {
                DateTime dt = DateTime.Now.AddDays(-120);
                this.dateEdit_FromDate.EditValue = dt;
            }
            if (EndDate == null)
            {
                this.dateEdit_EndDate.EditValue = DateTime.Now;
            }
            else
            {
                this.dateEdit_FromDate.EditValue = FromDate;
                this.dateEdit_EndDate.EditValue = EndDate;
            }
        }


        private void sBtn_Get_Click(object sender, EventArgs e)
        {
            if (this.dateEdit_FromDate.EditValue == null)
            {
                MessageBox.Show("請選擇[From]日期!");
                this.dateEdit_FromDate.Focus();
            }
            else if (this.dateEdit_EndDate.EditValue == null)
            {
                MessageBox.Show("請選擇[End]日期!");
                this.dateEdit_EndDate.Focus();
            }
            else
            {
                this.DialogResult = DialogResult.OK;
            }
        }


    }
}
