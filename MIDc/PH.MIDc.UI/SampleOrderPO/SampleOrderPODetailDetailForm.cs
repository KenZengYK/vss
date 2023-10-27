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

namespace PH.MIDc.UI
{
    public partial class SampleOrderPODetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {

        public SampleOrderPODetail CurSampleOrderPODetail
        {
            get { return (SampleOrderPODetail)this.BindingSource.Current; }
        
        }
        
        public SampleOrderPODetailDetailForm()
        {
            InitializeComponent();
            Controller.DisableSpinEditScrollings(this);
        }

        private void SampleOrderPODetailDetailForm_Load(object sender, EventArgs e)
        {
          
            SampleOrderPODetail current = (SampleOrderPODetail)this.BindingSource.Current;
            SampleOrderPODetailForm f=(this.PrevForm as SampleOrderPODetailForm);
            if (f == null) return;

            SampleOrderPO currentMaster = (SampleOrderPO)f.BindingSource.Current;
           
            if (currentMaster.MIDcDetail != null)
            {         
               this.colorEdit.Properties.Items.Clear();
                foreach (RatioPrice midcPrice in currentMaster.MIDcDetail.RatioPrices)
                {
                    if ((midcPrice.Price ?? 0) == 0)
                        continue;
                    this.colorEdit.Properties.Items.Add(new ComboBoxItem(midcPrice.ColorCategory,midcPrice.Price));// (new RatioPrice(midcPrice.ColorCategory, midcPrice.Price));
                }
            }

        }        

        private void colorEdit_Closed(object sender, ClosedEventArgs e)
        {
            if (this.colorEdit.SelectedIndex > -1)
            {
                ComboBoxItem obj = this.colorEdit.Properties.Items[this.colorEdit.SelectedIndex] as ComboBoxItem;

                CurSampleOrderPODetail.Price = (decimal)(obj.Value); //(Decimal)this.colorEdit.Properties.GetDataSourceValue("Price", this.colorEdit.ItemIndex);
                CurSampleOrderPODetail.Color = obj.Text;// (this.colorEdit.Properties.Items[this.colorEdit.SelectedIndex] as ComboBoxItem).Text; //(Decimal)this.colorEdit.Properties.GetDataSourceValue("Price", this.colorEdit.ItemIndex);
               
            }

        }

    }

    
}
