using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class StockAsAtDate : DevExpress.XtraEditors.XtraForm
    {
        public StockAsAtDate()
        {
            InitializeComponent();
            GetStockDate();
        }

        private void GetStockDate()
        {
            this.comboBoxEdit1.Properties.Items.Clear();

            //StockDateList list = new StockDateList();
            //List<StockDate> aa = list.GetStockDate();
            DataTable tb = SqlDataHelper.GetStockDate();

            foreach (DataRow row in tb.Rows)
            {
                this.comboBoxEdit1.Properties.Items.Add(row["DT"]);
            }
        }
        public int AsAtDate { get; set; }
        private void but_OKReturn_Click(object sender, EventArgs e)
        {
            //StockDate sd = this.comboBoxEdit1.SelectedItem as StockDate;
            
            try
            {
                this.AsAtDate = Convert.ToInt32(this.comboBoxEdit1.Text);
            }
            catch {
                this.AsAtDate = 0;
            }
            //this.AsAtDate = this.comboBoxEdit1.Text == null ? 0 : sd.DT;
            //this.AsAtDate = this.dateEdit1.EditValue == null ? 0 : Convert.ToInt32(this.dateEdit1.DateTime.ToString("yyyyMMdd"));
            this.DialogResult = DialogResult.OK;
        }
    }


}
