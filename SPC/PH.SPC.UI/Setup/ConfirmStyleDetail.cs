using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.SPC.BO;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Setup
{
    public partial class ConfirmStyleDetail : DetailForm
    {
        public ConfirmStyleDetail()
        {
            InitializeComponent();
        }

        public string[] FillYYMM()
        {
            string[] yearmonth = new string[240];

            int _startyear = 2016;
            int _idx = 0;
            for (int i = 0; i < 20; i++)
            {
                for (int j = 1; j<=12; j++)
                {                    
                   if (j < 10)
                       yearmonth[_idx] = _startyear.ToString() + "0" + j.ToString();
                   else
                       yearmonth[_idx] = _startyear.ToString() + j.ToString();
                   _idx++;
                }
                _startyear++;
            }
            return yearmonth;
        
        }

        public void FillCustomer()
        {

            this.cmbCustomer.Properties.Items.Clear();
            RWOSOPCDataContext rwodc = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.cmbCustomer.Properties.Items.AddRange(rwodc.CustomerCodes.Select(S => S.Customer.TrimEnd()).Distinct().ToList());
        
        }

        private void ConfirmStyleDetail_Load(object sender, EventArgs e)
        {

            this.yYMMComboBoxEdit.Properties.Items.Clear();
            this.yYMMComboBoxEdit.Properties.Items.AddRange(FillYYMM());
            FillCustomer();
        }

        protected override void SaveCurrent()
        {
            ConfirmStyle _current = this.BindingSource.Current as ConfirmStyle;

            if (cmbStyleType.Text == "Bra")
                _current.StyleType = 'A';
            else if (cmbStyleType.Text == "Brief")
                _current.StyleType = 'B';
            else
                _current.StyleType ='C';

            base.SaveCurrent();
        }
    }




}
