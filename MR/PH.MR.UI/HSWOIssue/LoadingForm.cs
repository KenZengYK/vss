using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSWOIssue
{
    public partial class LoadingForm : Form
    {
        public LoadingForm()
        {
            InitializeComponent();
        }


        /// <summary>
        /// Xsj:當前正在構建的窗體信息
        /// </summary>
        public FormMsg ShowFormMsg
        {
            get;
            set;
        }

        //Xsj:狀態計時器
        private Timer _timer = new Timer();

        DateTime dtStart;

        public LoadingForm(FormMsg CurrShowForm)
            : this()
        {
            dtStart = DateTime.Now;
            this.ShowFormMsg = CurrShowForm;
            if (this.ShowFormMsg != null && !string.IsNullOrEmpty(this.ShowFormMsg.LoadingNoteString))
            {
                this.marqueeProgressBarControl_Loading.Properties.ShowTitle = true;
                this.marqueeProgressBarControl_Loading.Text = this.ShowFormMsg.LoadingNoteString + "(0)";
            }
            _timer.Tick += new EventHandler(timer_Tick);
            _timer.Interval = 500;
            _timer.Enabled = true;
        }

        //Xsj:通過循環詢問的方式，監測窗體是否已經打開，以便關閉滾動條。
        void timer_Tick(object sender, EventArgs e)
        {
            if (this.ShowFormMsg == null) return;

            FormMsg mbfrm = this.ShowFormMsg as FormMsg;
            if (mbfrm != null)
            {
                if (mbfrm.IsFormLoadEnd)
                {
                    _timer.Enabled = false;
                    this.Close();
                }
                else
                {
                    //Xsj:刷新提示文字 
                    if (!string.IsNullOrEmpty(this.ShowFormMsg.LoadingNoteString))
                    {
                        int val = (DateTime.Now - dtStart).Seconds;
                        this.marqueeProgressBarControl_Loading.Text = this.ShowFormMsg.LoadingNoteString + "(" + val.ToString() + ")";
                    }
                }
            }
            else
            {
                _timer.Enabled = false;
            }
        }

    }
}
