using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using PH.Platform.BO;
namespace PH.MIDc.UI
{
    public partial class CustomerBrandedDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CustomerBrandedDetailForm()
        {
            InitializeComponent();
        }

        private void CustomerBrandedDetailForm_Load(object sender, EventArgs e)
        {
            PH.BasicInfo.BO.BasicInfoDataContext context = ContextBuilder.CreateContext < PH.BasicInfo.BO.BasicInfoDataContext>();
            var aa = from a in context.Customers
                     orderby a.CustomerCode
                     select a;

            this.comboBoxEdit1.Properties.Items.Clear();
            foreach (PH.BasicInfo.BO.Customer item in aa)
            {
                this.comboBoxEdit1.Properties.Items.Add(item.CustomerName);
            }

        }
        protected override void OnClickCancel()
        {
            try
            {
                base.OnClickCancel();
            }
            catch
            {
                this.OnClickSaveAndReturn();        
            }
        }
        
    }
}
