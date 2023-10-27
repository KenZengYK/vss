using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;
using PH.Platform.UI.CS.DataQuery;
using PH.POPC.BO;


namespace PH.POPC.UI.POPC
{
    public partial class LadDipBulkOptionForm : DevExpress.XtraEditors.XtraForm
    {
        public LadDipBulkOptionForm()
        {
            InitializeComponent();
            InitValue();
        }




        private void InitValue()
        {
            //this.comboBoxEdit1.Properties.Items.Clear();

            DicList list = new DicList();
            var aa = list.GetDataDictionary(PH.POPC.BO.Common.BulkDictionary);
            

            this.bindingSource1.DataSource = aa;
           // this.Properties.DataSource = this.bindingSource1;//在這裡需要用 bindingSource 才能顯示出數據

        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (NewLots <= OldLots)
            //{
            //    MessageBox.Show("New Lots must greater than Current Lots!", "Warning");
            //    return;
            //}

            this.DialogResult = DialogResult.OK;
        }
    }
}