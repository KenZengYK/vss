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
    public partial class DetailVersionControlForm : Form
    {
        public PH.MIDc.BO.Detail CurrDetail
        {
            get
            {
                return this._CurrDetail;
            }
            set
            {
                this._CurrDetail = value;
                this.detailVersionControlCtrl1.CurrDetail = this._CurrDetail;
            }
            
        }
        public PH.MIDc.BO.Detail _CurrDetail;


        public DetailVersionControlForm()
        {
            InitializeComponent();
        }


        private void DetailVersionControlForm_Load(object sender, EventArgs e)
        {
            this.bindingSource1.DataSource = CurrDetail.DetailChangeConfirms; 

        }
 

        private void sBtn_Rise_Click(object sender, EventArgs e)
        {
            if (this.detailVersionControlCtrl1.SaveVersion())
            {
               MessageBox.Show("保存版本號[" + this.CurrDetail.Version + "]信息成功。", "系統提示");
            }
            this.Close();
        }
    }
}
