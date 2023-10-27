using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.Hardware;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI

{
    public partial class VideoControllerCenter : XtraForm
    {
        public VideoControllerCenter()
        {
            InitializeComponent();
            _videocamController = VideocamController.CreateController(this.pictureBox1);
            _videocamController.ImageTempPath = System.Configuration.ConfigurationSettings.AppSettings["ImageTempPath"].ToString();

            _videocamController.OnStarting += new EventHandler(_videocamController_OnStarting);
            _videocamController.OnStarted += new EventHandler(_videocamController_OnStarted);
            _videocamController.OnStopping += new EventHandler(_videocamController_OnStopping);
            _videocamController.OnStopped += new EventHandler(_videocamController_OnStopped);
            
        }

        //private Logger log;
        private VideocamController _videocamController;
        private static VideoControllerCenter videoCenter = null;

        /// <summary>
        ///  Xsj(补)20110926：实例化相机驱动实体类
        /// </summary>
        /// <returns></returns>
        public static VideoControllerCenter getInstance()
        {
            if (videoCenter == null) {
                    videoCenter = new VideoControllerCenter();
            }
            return videoCenter;
        }

        public bool isStarted {
            get {
               return this._videocamController.Started;
            }
        }


        public void start() {
            // Start videocam controller
            if (!this._videocamController.Started)
            {
                DateTime dtStart = DateTime.Now;
                //log = Logger.GetInstance();
                //log.WriteLog("[" + this.GetType().ToString() + "] " + "begin VideocamController.start()");
                this._videocamController.Start();
                DateTime dtEnd = DateTime.Now;
                //log.WriteLog("[" + this.GetType().ToString() + "] " + "end VideocamController.start()");
                TimeSpan span = dtEnd.Subtract(dtStart);
                //log.WriteLog("[" + this.GetType().ToString() + "] " + "time = " + span.ToString() + " of VideocamController.start() used\n");

            }
        }

        public void stop()
        {
            if (this._videocamController.Started)
            {
                // Stop videocam controller
                this._videocamController.Stop();
            }
        }

        //public string photoname()
        //{
        //    this.
        //}
        public Image captureImage(string x)
        {
            return this._videocamController.CaptureImage(x);
        }

        /// <summary>
        ///  Xsj(补)20110926：拍照
        /// </summary>
        /// <param name="x"></param>
        /// <returns></returns>
        public byte[] captureImageAsBytes(string x)
        //public string captureImageAsBytes()
        {
           //return this._videocamController.ImageToBytes(this._videocamController.CaptureImage());

          return ImageUtil.ImageToJpegBytes(this._videocamController.CaptureImage(x));
       } 

        void _videocamController_OnStarting(object sender, EventArgs e)
        {
            statusBar1.Text = ("Starting controller...");
        }

        void _videocamController_OnStarted(object sender, EventArgs e)
        {
            statusBar1.Text = ("Started");
        }

        void _videocamController_OnStopping(object sender, EventArgs e)
        {
            statusBar1.Text = ("Stopping controller...");
        }

        void _videocamController_OnStopped(object sender, EventArgs e)
        {
            statusBar1.Text = ("Stopped");
        }

        private void VideoControllerCenter_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this._videocamController.Started)
                this._videocamController.Stop();
            videoCenter = null;

        }

      
        private void sbTopMost_Click(object sender, EventArgs e)
        {
            //this.TopMost = !this.TopMost;
            //if (this.TopMost)
            //{
            //    this.simpleButton1.Text = "stay on noraml";
            //}
            //else {
            //    this.simpleButton1.Text = "stay on noraml";
            //}
        }

        private void sbClose_Click(object sender, EventArgs e)
        {
            stop();
            this.Close();
        }

        private void VideoControllerCenter_FormClosed(object sender, FormClosedEventArgs e)
        {
            videoCenter = null;

        }

        private void VideoControllerCenter_Resize(object sender, EventArgs e)
        {
            panel1.Dock = DockStyle.None;
            panel1.Dock = DockStyle.Fill;
            panel1.Refresh();

        }

    }
}