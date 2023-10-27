using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.HSWOIssue
{


    public class LoadingFormHelper
    {
        //Xsj:用於監測主界面載入進度條
        private FormMsg _loadFrmMsg;

        /// <summary>
        ///  Xsj:顯示進度提示窗體
        /// </summary>
        /// <param name="Msg"></param>
        public void ShowLoadingForm(string Msg)
        {
            //Xsj:啟動另外的線程來顯示進度提示窗體 
            System.Threading.Thread ShowNoteFormThread = new System.Threading.Thread(new System.Threading.ParameterizedThreadStart(Show));
            ShowNoteFormThread.Priority = System.Threading.ThreadPriority.Highest;
            ShowNoteFormThread.IsBackground = true;
            this._loadFrmMsg = new FormMsg();
            this._loadFrmMsg.LoadingNoteString = Msg;
            ShowNoteFormThread.Start(this._loadFrmMsg);
        }

        /// <summary>
        ///  Xsj:顯示進度提示窗體
        /// </summary>
        /// <param name="FrmMsg"></param>
        public void ShowLoadingForm(FormMsg FrmMsg)
        {
            //Xsj:啟動另外的線程來顯示進度提示窗體 
            System.Threading.Thread ShowNoteFormThread = new System.Threading.Thread(new System.Threading.ParameterizedThreadStart(Show));
            ShowNoteFormThread.Priority = System.Threading.ThreadPriority.Highest;
            ShowNoteFormThread.IsBackground = true;
            this._loadFrmMsg = FrmMsg;
            ShowNoteFormThread.Start(this._loadFrmMsg);
        }

        /// <summary>
        /// Xsj:更新進度提示信息
        /// </summary>
        /// <param name="Msg"></param>
        public void RefreshNoteString(string Msg)
        {
            this._loadFrmMsg.LoadingNoteString = Msg;
        }

        public void CloseLoadingForm()
        {
            Hide();
        }

        private void Show(object ShowFormMsg)
        {
            LoadingForm loadingNoteForm = new LoadingForm(ShowFormMsg as FormMsg);
            loadingNoteForm.ShowInTaskbar = false;
            loadingNoteForm.StartPosition = FormStartPosition.Manual;
            loadingNoteForm.StartPosition = FormStartPosition.CenterScreen;
            loadingNoteForm.ShowDialog();
        }

        private void Hide()
        {
            if (this._loadFrmMsg != null)
            {
                this._loadFrmMsg.IsFormLoadEnd = true;
            }
        }

    }

}
