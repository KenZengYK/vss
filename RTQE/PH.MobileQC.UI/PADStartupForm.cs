using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.MobileQC.BO.Properties;

namespace PH.MobileQC.UI
{
    public partial class PADStartupForm : PH.Platform.UI.CS.BaseForm//PH.UI.UI0.BlankForm
    {
        MobileQCDataContext Qcdatacontext;
        private byte? flag;
        delegate void SetProgressBar();
        public delegate int MyInvoke(bool? isTrue, ref byte? isSucc);
        private string serverconnection;


        private void CallBackMethod(IAsyncResult ar)
        {
            SetProgressBar dd = new SetProgressBar(this.SetBar);
            try
            {

                //从異步狀態ar.AsyncState中，獲取委託對象
                MyInvoke dn = (MyInvoke)ar.AsyncState;
                System.Reflection.ParameterInfo[] paras = dn.Method.GetParameters();
                string bb = paras[0].ToString();
                //一定要EndInvoke
                int retvalue = dn.EndInvoke(ref IsSucc, ar);

                if (ar.IsCompleted)
                {

                    Invoke(dd);
                    this.timer1.Enabled = false;
                    if (IsSucc.GetValueOrDefault() == Byte.Parse("1"))
                    {
                        if (flag == 0)
                            MessageBox.Show("Initialize work data success,can startup mobile qc now!", "Success!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                        if (flag == 1)
                            MessageBox.Show("upload local data success !", "Success!", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    }
                    else
                    {
                        if (flag == 0)
                            MessageBox.Show("Initialize work data has failed!", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (flag == 1)
                            MessageBox.Show("Upload local data has failed !", "Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch
            {
                MessageBox.Show("Initial work data has failed!  ", "Failed!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                flag = null;
                Invoke(dd);
                return;
            }

        }
        //初始化时若本地有数据,选择上传后继续初始化时调用此callbackmethod
        private void CallBackMethod1(IAsyncResult ar)
        {

            try
            {

                //从異步狀態ar.AsyncState中，獲取委託對象
                MyInvoke dn = (MyInvoke)ar.AsyncState;
                //一定要EndInvoke
                int retvalue = dn.EndInvoke(ref IsSucc, ar);
                // while (!iarr.AsyncWaitHandle.WaitOne(-1, false))

                if (ar.IsCompleted)
                {
                    MyInvoke dn1 = new MyInvoke(Qcdatacontext.QC_WorkOffline);
                    AsyncCallback acb1 = new AsyncCallback(CallBackMethod);
                    IAsyncResult iar = dn1.BeginInvoke(false, ref IsSucc, acb1, dn1);
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //异步完成後將progressbar的值设为max
        private void SetBar()
        {
            this.progressBar1.Value = this.progressBar1.Maximum;
            this.progressBar1.Visible = false;

        }

        public PADStartupForm()
        {
            InitializeComponent();
            Qcdatacontext = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            serverconnection = Qcdatacontext.Connection.ConnectionString;
        }

        private void btnStartup_Click(object sender, EventArgs e)
        {
            // context.CommandTimeout = 600;
            //初次使用时判斷qc_master表是否存在,若不存在表示尚未成功执行初始化,提示用户先執行初始化
            string sqlstr = @"select count(*) from dbo.sysobjects where id = object_id(N'[dbo].[qc_master]') and OBJECTPROPERTY(id, N'IsUserTable') = 1";
            IEnumerable<int> d = Qcdatacontext.ExecuteQuery<int>(sqlstr);
            //if (IsSucc.GetValueOrDefault() == Byte.Parse("2"))
            int qq = d.First();
            if (qq == 0)
            {
                MessageBox.Show("The base data has not exist,please initialized data first!");
                return;
            }
            //Xsj（補充）:開啟檢驗輸入窗體。
            frmMain form = new frmMain(radioButton1.Checked);
            form.Show();
        }

        private void WorkStatuChanged(object sender, EventArgs e)
        {
            this.btnUpload.Visible = radioButton2.Checked;
            this.btnInitial.Visible = radioButton2.Checked;
            string connstr = Qcdatacontext.Connection.ConnectionString;
            if (radioButton1.Checked)
                connstr = this.serverconnection;//Qcdatacontext.DefaultConnectionString;
            else
                connstr = Qcdatacontext.OfflineConnectionString;

            Qcdatacontext.Connection.ConnectionString = connstr;

        }
        private void btnInitial_Click(object sender, EventArgs e)
        {
            bool ischeck = false;
            try
            {
                //審查用戶本机是否有尚未上傳的資料,回答Yes則繼續初始化.但是初次初始化不進行检查

                string sqlstr = @"select count(*) from dbo.sysobjects where id = object_id(N'[dbo].[qc_master]') and OBJECTPROPERTY(id, N'IsUserTable') = 1";
                IEnumerable<int> d = Qcdatacontext.ExecuteQuery<int>(sqlstr);
                int qq = d.First();

                if (qq != 0)
                {
                    DialogResult dlgr = DialogResult.None;
                    int mCount = Qcdatacontext.QC_Masters.Count<QC_Master>();
                    //sqlstr = @"select count(*) from qc_master";
                    //d = Qcdatacontext.ExecuteQuery<int>(sqlstr);
                    //int mCount = d.First();
                    if (mCount > 0)
                    {
                        string Str = "检測到尚有" + mCount.ToString() + "筆資料未上傳" + System.Environment.NewLine +
                            "选择[是Yes]將上传資料後繼續執行初始化" + System.Environment.NewLine +
                            "选择[否No]將刪除未上传資料後繼續執行初始化" + System.Environment.NewLine;

                        dlgr = MessageBox.Show(Str, "初始化操作提示信息", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
                        if (dlgr == DialogResult.Cancel)
                            return;
                        if (dlgr == DialogResult.Yes)
                        {
                            ischeck = true;
                            this.btnIntiliUpload_Click(this, new EventArgs());
                        }
                    }
                }
            }
            catch (Exception ex)
            { throw ex; }


            if (!ischeck)
            {
                flag = 0; //初始化操作标志
                Qcdatacontext.CommandTimeout = 1000;
                progressBar1.Visible = true;
                progressBar1.Minimum = 0;
                progressBar1.Maximum = 1800;
                progressBar1.Style = ProgressBarStyle.Marquee;
                //timer1.Enabled = true;
                this.Refresh();
                MyInvoke dn = new MyInvoke(Qcdatacontext.QC_WorkOffline);
                AsyncCallback acb = new AsyncCallback(CallBackMethod);
                IAsyncResult iar = dn.BeginInvoke(false, ref IsSucc, acb, dn);
            }
            else
            {

                //if (iscomplete)
                //{
                //    iscomplete = false;
                //    MyInvoke dn = new MyInvoke(Qcdatacontext.QC_WorkOffline);
                //    AsyncCallback acb = new AsyncCallback(CallBackMethod);
                //    IAsyncResult iar = dn.BeginInvoke(false, ref IsSucc, acb, dn);

                //}
            }





            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show("Failed to initial work data for :" + ex.Message);               
            //    flag = null;
            //    return;
            //}

        }


        private System.Nullable<byte> IsSucc = 0;
        //private bool iscomplete = false;
        private void btnIntiliUpload_Click(object sender, EventArgs e)
        {
            flag = 0; //初始化操作标志            
            progressBar1.Visible = true;
            progressBar1.Minimum = 0;
            progressBar1.Maximum = 1800;
            progressBar1.Style = ProgressBarStyle.Marquee;

            Qcdatacontext.CommandTimeout = 600;
            MyInvoke dn = new MyInvoke(Qcdatacontext.QC_WorkOffline);
            AsyncCallback acb = new AsyncCallback(CallBackMethod1);
            IAsyncResult iarr = dn.BeginInvoke(true, ref IsSucc, acb, dn);

            // iscomplete = iarr.IsCompleted;
        }


        private void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                Qcdatacontext.CommandTimeout = 600;
                //初次使用上传功能时判斷是否己成功執行初始化作业,若沒有提示用户先執行初始化
                string sqlstr = @"select count(*) from dbo.sysobjects where id = object_id(N'[dbo].[qc_master]') and OBJECTPROPERTY(id, N'IsUserTable') = 1";
                IEnumerable<int> d = Qcdatacontext.ExecuteQuery<int>(sqlstr);
                //if (IsSucc.GetValueOrDefault() == Byte.Parse("2"))
                int qq = d.First();
                if (qq == 0)
                {
                    MessageBox.Show("The base data has not exist,please initialized data first!");
                    return;
                }
            }
            catch (Exception ex)
            { throw ex; }

            flag = 1; //上传数据操作标志
            Qcdatacontext.CommandTimeout = 300;
            progressBar1.Visible = true;
            progressBar1.Minimum = 0;
            progressBar1.Maximum = 1800;
            progressBar1.Style = ProgressBarStyle.Marquee;
            this.Refresh();
            MyInvoke dn = new MyInvoke(Qcdatacontext.QC_WorkOffline);
            AsyncCallback acb = new AsyncCallback(CallBackMethod);
            IAsyncResult iar = dn.BeginInvoke(true, ref IsSucc, acb, dn);
        }

    }
}
