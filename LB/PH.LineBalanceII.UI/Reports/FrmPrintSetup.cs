using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class FrmPrintSetup : Form
    {
        StyleMasterDetailForm ParentForm;
        public Object FormObj;
        public string FAE;
        public FrmPrintSetup(Object parent, string fae)
        {
            InitializeComponent();
            FormObj = parent;
            FAE = fae;
        }

        //public bool IsPrintEngLish 
        //{
        //    get { return this.checkEdit1.Checked; }
        //}

        private void sbtnOK_Click(object sender, EventArgs e)
        {
            //if (chkMaster.Checked)

            if (FAE == "A") 
            {
                (FormObj as StyleMasterDetailForm).IsPrintEngLish = this.RadGrpLanguage.SelectedIndex==0?false:true;
                if (grpRadio.SelectedIndex == 0)
                    (FormObj as StyleMasterDetailForm).SelectIndex = 0;
                else if (grpRadio.SelectedIndex == 1)
                    (FormObj as StyleMasterDetailForm).SelectIndex = 1;
                else if (grpRadio.SelectedIndex == 2)
                    (FormObj as StyleMasterDetailForm).SelectIndex = 2;
            }
            else if (FAE == "E") 
            {
                (FormObj as StyleMasterDetailForm_E).IsPrintEngLish = this.RadGrpLanguage.SelectedIndex == 0 ? false : true;
                if (grpRadio.SelectedIndex == 0)
                    (FormObj as StyleMasterDetailForm_E).SelectIndex = 0;
                else if (grpRadio.SelectedIndex == 1)
                    (FormObj as StyleMasterDetailForm_E).SelectIndex = 1;
                else if (grpRadio.SelectedIndex == 2)
                    (FormObj as StyleMasterDetailForm_E).SelectIndex = 2;
            }
            else 
            {
                (FormObj as StyleMasterDetailForm_F).IsPrintEngLish = this.RadGrpLanguage.SelectedIndex == 0 ? false : true;
                if (grpRadio.SelectedIndex == 0)
                    (FormObj as StyleMasterDetailForm_F).SelectIndex = 0;
                else if (grpRadio.SelectedIndex == 1)
                    (FormObj as StyleMasterDetailForm_F).SelectIndex = 1;
                else if (grpRadio.SelectedIndex == 2)
                    (FormObj as StyleMasterDetailForm_F).SelectIndex = 2;
            }


           
        }

        //public FrmPrintSetup(StyleMasterDetailForm parent)
        //{
        //    InitializeComponent();
        //    ParentForm = parent;
        //}

        //private void sbtnOK_Click(object sender, EventArgs e)
        //{
        //    //if (chkMaster.Checked)
        //    if (grpRadio.SelectedIndex ==0)
        //        ParentForm.SelectIndex = 0;
        //    else if (grpRadio.SelectedIndex == 1)
        //        ParentForm.SelectIndex = 1;
        //    else if (grpRadio.SelectedIndex ==2)
        //        ParentForm.SelectIndex = 2;
        //}
    }
}
