using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class FrmDateRange : Form
    {
        int ImpType = 0;
        object ParentObj;
        public FrmDateRange()
        {
            InitializeComponent();
        }

        public int Flag;
        public FrmDateRange(int imptype, object parent, int Flag)
        {
            InitializeComponent();
            ImpType = imptype;
            ParentObj = parent;
            this.Flag = Flag;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //if (deFrom.EditValue == null || deTo.EditValue == null)
            //{
            //    MessageBox.Show("請選擇開始&結束日期!");
              
            //    return;
            //}

            if (checkText())
            {
                string _start = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deFrom.EditValue.ToString()));
                string _end = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(deTo.EditValue.ToString()));
                DataTable db = DataHelper.GetPieceInfo(_start, _end, ImpType, this.Flag);
                if (ImpType == 1)
                {
                    (ParentObj as ReciveItemList).ImportList = DataHelper.GetRecvList(db);
                }
                else if (ImpType == 2)
                {
                    (ParentObj as IsuueItemList).ImportList = DataHelper.GetIssuList1(db);
                }
                else if (ImpType == 3)
                {
                    (ParentObj as ReturnItemList).ImportList = DataHelper.GetReturnList(db);
                }
                else if (ImpType == 4)
                {
                    (ParentObj as RCItemList).ImportList = DataHelper.GetRCList(db);
                }
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
          }        

        bool checkText() 
        {
            if (deFrom.EditValue == null || deTo.EditValue == null)
            {
                MessageBox.Show("請選擇開始&結束日期!");
                return false;
            }
            else { return true; }
        }

        private void deTo_EditValueChanged(object sender, EventArgs e)
        {

        }
    }
}
