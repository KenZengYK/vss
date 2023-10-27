using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using PH.Platform.Misc.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class DimensionDetailForm : DetailForm
    {
        public DimensionDetailForm()
        {
            InitializeComponent();
        }

        private void DimensionDetailForm_Load(object sender, EventArgs e)
        {
            materialTypeLookUpEdit.Properties.DataSource = ClsFun.GetMaterilType();
            endCustomerComboBoxEdit.Properties.Items.AddRange((this.DataContext as BasicInfoDataContext).Customers.Select(S => S.CustomerName).ToArray());
            widthSpecLookUpEdit.Properties.DataSource = ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec").OrderBy(E => E.DataCode);
            var ds = (this.DataContext as BasicInfoDataContext).Dimensions.ToList();
            ds.Insert(0, new Dimension());
            lookUpEdit1.Properties.DataSource = ds;
            EndCustomerVisible();

        }

        private void dependentOrIndependentCheckEdit_CheckedChanged(object sender, EventArgs e)
        {
            if (dependentOrIndependentCheckEdit.Checked)
            {
                endCustomerComboBoxEdit.Visible = true;
                endCustomerLabel.Visible = true;
            }
            else
            {

                endCustomerLabel.Visible = false;
                endCustomerComboBoxEdit.Visible = false;

            }
        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            EndCustomerVisible();
        }

        void EndCustomerVisible()
        {
            if (!string.IsNullOrEmpty((this.BindingSource.Current as MaterialTypeDimension).EndCustomer))
            {
                endCustomerComboBoxEdit.Visible = true;
                endCustomerLabel.Visible = true;
                dependentOrIndependentCheckEdit.Checked = true;
            }
            else
            {
                endCustomerComboBoxEdit.Visible = false;
                endCustomerLabel.Visible = false;
                dependentOrIndependentCheckEdit.Checked = false;
            }
        }


        private void rgVAT_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {

            object obj = e.NewValue;
            //object obj=this.rgVAT.EditValue;

            bool b = Convert.IsDBNull(obj) ? false : Convert.ToBoolean(obj);

            this.lbVAT.Enabled = this.cbeVAT.Enabled = b;
        }
    }
}
