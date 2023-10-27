using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class WorkTimeBasePriceDetailForm : DetailForm
    {
        public WorkTimeBasePriceDetailForm()
        {
            InitializeComponent();
        }



        protected override void SaveCurrent()
        {

            ByPiece_WorkTimeBasePrice obj = this.BindingSource.Current as ByPiece_WorkTimeBasePrice;
            if (CheackTxt())
            {
                obj.Flag = (this.ListForm as WorkTimeBasePriceListForm).Flag;
                base.SaveCurrent();
            }
        }
        bool CheackTxt()
        {
            if (string.IsNullOrEmpty(this.startDateDateEdit.Text))
            {
                MessageBox.Show("請選擇開始日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.dueDateDateEdit.Text))
            {
                MessageBox.Show("請選擇結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.priceSpinEdit.Text))
            {
                MessageBox.Show("請輸入價格!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (this.startDateDateEdit.DateTime > this.dueDateDateEdit.DateTime)
            {
                MessageBox.Show("開始日期需小於結束日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;

        }

    }
}
