using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.HDO.UI
{
    public partial class BatchUpdateCustomInfoForm : DevExpress.XtraEditors.XtraForm
    {
        public BatchUpdateCustomInfoForm()
        {
            InitializeComponent();

            this.txtDate.DateTime = DateTime.Now;
        }

        /// <summary>
        /// 進口海關單號
        /// </summary>
        public string CustomNo
        {
            get
            {
                return this.txtCustomNo.Text;
            }
        }

        /// <summary>
        /// 輸入進口海關單號的日期
        /// </summary>
        public DateTime EntranceCustomDate
        {
            get
            {
                return this.txtDate.DateTime.Date;
            }
        }

    }
}