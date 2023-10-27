using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BackEnd.BO;
using System.Reflection;
using System.Collections;


namespace PH.POPC.Service
{
    public partial class AutoForm : Form
    {
        private bool CloseTag = false;
        public AutoForm()
        {
            InitializeComponent();

        }



        private void notifyIcon1_DoubleClick(object sender, EventArgs e)
        {
            this.Show();

            if (this.WindowState == FormWindowState.Minimized)

                this.WindowState = FormWindowState.Normal;

            else if (this.WindowState == FormWindowState.Normal)

                this.WindowState = FormWindowState.Minimized;

            this.Activate(); //激活窗体并为其赋予焦点 

        }

        private void SyncForm_Resize(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Minimized)
            {

                this.Hide();

            }

        }



        private void tsmClose_Click(object sender, EventArgs e)
        {
            this.CloseTag = true;
            this.Close();
        }

        private void tsmShow_Click(object sender, EventArgs e)
        {
            this.Visible = true;
            this.Activate(); //激活窗体并为其赋予焦点 
        }



        private void tsmHide_Click(object sender, EventArgs e)
        {
            this.Visible = false;
        }



        bool FirstShow = true;
        private void SyncForm_Shown(object sender, EventArgs e)
        {
            this.Visible = false;

        }




        void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            PH.Platform.BackEnd.BO.ServerJob.WriteLog(((Exception)e.ExceptionObject).Message + "----" + ((Exception)e.ExceptionObject).StackTrace);
        }



        private void btnReStart_Click(object sender, EventArgs e)
        {
        ReDo:
            try
            {

                Start();
            }
            catch
            {
                Stop();
                GC.Collect();
                goto ReDo;
            }
        }

        private void btnStop_Click(object sender, EventArgs e)
        {
            Stop();
        }

        private void AutoForm_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(CurrentDomain_UnhandledException);
            Start();
        }

        private void Start()
        {
            try
            {
                //Xsj:从数据库中获取需要启动的后台服务
                PH.Platform.BackEnd.BO.BackEndDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.BackEnd.BO.BackEndDataContext>();
                foreach (PH.Platform.BackEnd.BO.StartParam item in context.StartParams.Where(p => p.ServiceName.Contains("AutoUpdate")))
                {
                    StartStop(item, "working");
                }
            }
            catch { }
        }


        private void Stop()
        {
            try
            {
                PH.Platform.BackEnd.BO.BackEndDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.BackEnd.BO.BackEndDataContext>();
                foreach (PH.Platform.BackEnd.BO.StartParam item in context.StartParams.Where(p => p.ServiceName.Contains("AutoUpdate")))
                {
                    StartStop(item, "stop");
                }
            }
            catch { }
        }

        private static Hashtable services = new Hashtable();
        private void StartStop(PH.Platform.BackEnd.BO.StartParam stm, string action)
        {

            if (action.ToLower() == "working")
            {
                Assembly ass = Assembly.LoadFrom(stm.AssemblyName);
                Type ClassType = ass.GetType(stm.ClassType);

                if (ClassType == null)
                {
                    MessageBox.Show("The type:" + stm.ClassType + " is not exist!");
                    return;
                }

                object obj = Activator.CreateInstance(ClassType);
                //檢查obj對象是否有實現ServiceClass抽象類
                StartService sc = obj as StartService;
                if (sc == null)
                {
                    MessageBox.Show("The type:" + ClassType.Name + " is not achieving the abstract class:'StartService'!");
                    return;
                }

                if (sc.StartServer(stm.ServiceName))
                {
                    services.Add(stm.ServiceName, obj);
                    stm.State = "Working";

                }

            }
            else
            {
                StartService stc = services[stm.ServiceName] as StartService;
                if (stc != null && stc.StopServer(stm.ServiceName))
                {
                    services[stm.ServiceName] = null;
                    services.Remove(stm.ServiceName);
                    stm.State = "Stop";
                }

            }

        }

    }
}
