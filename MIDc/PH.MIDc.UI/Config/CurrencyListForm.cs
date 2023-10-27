using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class CurrencyListForm : PH.UI.UI1.SingleListForm
    {
        public CurrencyListForm()
        {
            InitializeComponent();
            //設置ListForm的編輯介面。
            this.EditorTypeName = typeof(CurrencyDetailForm).FullName;
        }

        private void CurrencyListForm_Load(object sender, EventArgs e)
        {
            //在此設置DataSource和context。
            PH.BasicInfo.BO.BasicInfoDataContext context = new PH.BasicInfo.BO.BasicInfoDataContext();
          

            this.DataContext = context;
            this.DataSource = from currency in context.Currencies select currency;

        }
    }
}
