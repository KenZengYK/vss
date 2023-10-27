using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI
{
    public partial class FrmMastListPrint : Form
    {
        private MasterList ParentObj;
        private MasterList_Comp ParentObj1;

        public FrmMastListPrint(MasterList master)
        {
            InitializeComponent();
            ParentObj = master;
        }

        public FrmMastListPrint(MasterList_Comp master)
        {
            InitializeComponent();
            ParentObj1 = master;
        }

        private void OnClick(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            if (btn.Name == "btnPrint")
            {
                if (deEnd.DateTime.ToShortDateString() == "0001/1/1" || deStart.DateTime.ToShortDateString() == "0001/1/1")
                {
                    MessageBox.Show("請選擇起止日期 !");
                    return;
                }
                if (deEnd.DateTime < deStart.DateTime)
                {
                    MessageBox.Show("結束日期應大于等于開始日期 !");
                    return;
                }

                //if (this.DialogResult == DialogResult.OK)
                //{


              //  string s1 = deStart.DateTime.ToShortDateString(); string s2 = deEnd.DateTime.ToShortDateString();
                string s1 = deStart.Text; string s2 = deEnd.Text;
                if (ParentObj!=null)
                  ParentObj.Condition = this.cbbFac.Text + ";" + s1 + ";" + s2;
                if (ParentObj1 != null)
                    ParentObj1.Condition = this.cbbFac.Text + ";" + s1 + ";" + s2;

                this.DialogResult = DialogResult.OK;
                // }
            }

        }

    }
}
