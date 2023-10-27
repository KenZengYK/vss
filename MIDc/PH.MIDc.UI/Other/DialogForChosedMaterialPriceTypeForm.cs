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
    public partial class DialogForChosedMaterialPriceTypeForm : Form
    {
        
        public DialogForChosedMaterialPriceTypeForm()
        {
            InitializeComponent();
        }

        private void sBtn_OK_Click(object sender, EventArgs e)
        {
            if (this.chkListBoxPriceType.CheckedItems.Count == 0)
            {
                MessageBox.Show("请选择价格类别!", "系统提示");
                return;
            }
            List<string> chosedPriceTypeList=new List<string> ();
            foreach (var item in this.chkListBoxPriceType.CheckedItems)
            {
                chosedPriceTypeList.Add(item.ToString());
            }
            this.Tag = chosedPriceTypeList;
            this.DialogResult = DialogResult.OK; 
        }
    }
}
