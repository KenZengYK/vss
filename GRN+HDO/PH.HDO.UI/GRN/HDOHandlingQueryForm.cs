using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;

namespace PH.HDO.UI.GRN
{
    public partial class HDOHandlingQueryForm : DevExpress.XtraEditors.XtraForm
    {
        public HDOHandlingQueryForm()
        {
            InitializeComponent();
        }

        public List<string> CustDeclaList = new List<string>();

        public List<string> AHDONoList = new List<string>();
  
        private void simpleButton1_Click(object sender, EventArgs e)
        {
           
            string txtstr = txtCustDeclarationNo.Text.Replace('£¬',',')+',';

            string[] CustDeclaStr = txtstr.Split(',');
            foreach (string a in CustDeclaStr) 
            {
                CustDeclaList.Add(a);
            }
            CustDeclaList.RemoveAll(dr => dr == "" || dr == null);



            string txtstrHDONo = txtHDONo.Text.Replace('£¬', ',') + ',';
            string[] AHDONo = txtstrHDONo.Split(',');
            foreach (string a in AHDONo)
            {
                AHDONoList.Add(a);
            }
            AHDONoList.RemoveAll(dr => dr == "" || dr == null);

   
            
        }
    }
}