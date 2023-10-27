using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Runtime.InteropServices;

namespace PH.MIDc.UI
{
    public partial class EntranceKeyForm01 : DevExpress.XtraEditors.XtraForm
    {
        PH.MIDc.BO.Detail PList = new PH.MIDc.BO.Detail();
        public EntranceKeyForm01(PH.MIDc.BO.Detail PriceList)
        {
            InitializeComponent();
            PList = PriceList;
            PriceList.Commodity = "ABC123456";
        }

        private void EntranceKeyForm_Load(object sender, EventArgs e)
        { 
        }
 

        /// <summary>
        /// Xsj101026:綁定數據源
        /// </summary>
        private void BindDataSource()
        {
        }


        #region 導航按鈕動作
        /// <summary>
        /// Back
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sBtnBack_Click(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Next
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sBtnNext_Click(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// CancelOrOk
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sBtnCancelOrOk_Click(object sender, EventArgs e)
        {
            string Status = this.sBtnCancelOrOk.Tag.ToString().ToUpper();
            if (Status == "CANCEL")
            { 
            }
        }
        #endregion
 

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.Tag = PList;
            this.Close();
        }


    }
}