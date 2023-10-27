using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;

namespace PH.FabricInspection.UI
{
    public partial class FrmImageViewer_Old : XtraForm
    {
        private int rate = 100;
        private int step = 10;
        private int cWidth = 400;
        private int cHeight = 400;
//        protected int currentBoardNo = 1;

        private int initXrangeTop;


        private int _currentBoardNo;

        public int CurrentBoardNo
        {
            get { return _currentBoardNo; }
            set {
                _currentBoardNo = value;
                if (_currentBoardNo < 1) {
                    _currentBoardNo = 1;
                }
                lcTop.Text = (_currentBoardNo - 1) + "";
                lc1.Text = (_currentBoardNo - 1 + 0.1) + "";
                lc2.Text = (_currentBoardNo - 1 + 0.2) + "";
                lc3.Text = (_currentBoardNo - 1 + 0.3) + "";
                lc4.Text = (_currentBoardNo - 1 + 0.4) + "";
                lc5.Text = (_currentBoardNo - 1 + 0.5) + "";
                lc6.Text = (_currentBoardNo - 1 + 0.6) + "";
                lc7.Text = (_currentBoardNo - 1 + 0.7) + "";
                lc8.Text = (_currentBoardNo - 1 + 0.8) + "";
                lc9.Text = (_currentBoardNo - 1 + 0.9) + "";

                lcBottom.Text  = _currentBoardNo + "";
            }
        }


        private static FrmImageViewer_Old imageViewer = null;

        public FrmImageViewer_Old()
        {
            InitializeComponent();
            initXrangeTop = rangeTrackBarControl1.Top;
        cWidth = xtraScrollableControl1.Width;
        cHeight = xtraScrollableControl1.Height;

        }
        public static FrmImageViewer_Old getInstance()
        {
            if (imageViewer == null)
            {
                imageViewer = new FrmImageViewer_Old();
            }
            return imageViewer;
        }

        public void ViewImage(Image image, int iBoardNo)
        {
            pictureEdit1.Image = image;
            CurrentBoardNo = iBoardNo;

            if (!this.Visible)
            {
                this.Visible = true;
            }
            imageViewer.BringToFront();
        }

        private void FrmImageViewer_FormClosed(object sender, FormClosedEventArgs e)
        {
            imageViewer = null;
        }

        private void FrmImageViewer_FormClosing(object sender, FormClosingEventArgs e)
        {
            imageViewer = null;

        }


        private void simpleButton4_Click(object sender, EventArgs e)
        {
//            rangeTrackBarControl1.Dock = DockStyle.Left;
            pnlRange.Dock = DockStyle.Left;
            xtraScrollableControl1.Dock = DockStyle.Fill;
            pictureEdit1.Dock = DockStyle.Fill;
            rate = 100;
            cWidth = xtraScrollableControl1.Width;
            cHeight = xtraScrollableControl1.Height;

        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
//            rangeTrackBarControl1.Dock = DockStyle.None; 
            pnlRange.Dock = DockStyle.Left;
//            xtraScrollableControl1.Dock = DockStyle.None;
            pictureEdit1.Dock = DockStyle.None;

            Point tempScrollPosition = new Point();
            tempScrollPosition.X = xtraScrollableControl1.AutoScrollPosition.X;
            tempScrollPosition.Y = 0;
            xtraScrollableControl1.AutoScrollPosition = tempScrollPosition;

            rate = 100 + step;
            pictureEdit1.Width = (int)Math.Floor((decimal)(cWidth * rate / 100));
            pictureEdit1.Height = (int)Math.Floor((decimal)cHeight * rate / 100);
            pnlRangeData.Height = pictureEdit1.Height;
      //rangeTrackBarControl1.Height = pictureEdit1.Height;
//            lcBottom.Top = pictureEdit1.Top + pictureEdit1.Height - 22;
            cWidth = pictureEdit1.Width;
            cHeight = pictureEdit1.Height;

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {

  //          rangeTrackBarControl1.Dock = DockStyle.None;
            pnlRange.Dock = DockStyle.Left;
  //          xtraScrollableControl1.Dock = DockStyle.None;
            pictureEdit1.Dock = DockStyle.None;

            Point tempScrollPosition = new Point();
            tempScrollPosition.X = xtraScrollableControl1.AutoScrollPosition.X;
            tempScrollPosition.Y = 0;
            xtraScrollableControl1.AutoScrollPosition = tempScrollPosition;


            rate = 100 - step;
            if (rate <= 0) {
                rate = 1;
            }
            int tempWidth = (int)Math.Floor((decimal)cWidth * rate / 100);
            if (tempWidth < 200) {
                tempWidth = 200;
            }
            pictureEdit1.Width = tempWidth;

            int tempHeight = (int)Math.Floor((decimal)cHeight * rate / 100);
            if (tempHeight < 200)
            {
                tempHeight = 200;
            }
            pictureEdit1.Height = tempHeight;
            pnlRangeData.Height = pictureEdit1.Height;
            //rangeTrackBarControl1.Height = pictureEdit1.Height;
            //lcBottom.Top = pictureEdit1.Top + pictureEdit1.Height - 22;
            cWidth = pictureEdit1.Width;
            cHeight = pictureEdit1.Height;

        }

        private void Form1_ResizeEnd(object sender, EventArgs e)
        {
            
            if (pictureEdit1.Dock == DockStyle.Fill)
            {
                cWidth = xtraScrollableControl1.Width;
                cHeight = xtraScrollableControl1.Height;
            }

        }

        private void sbClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmImageViewer_SizeChanged(object sender, EventArgs e)
        {
            if (pictureEdit1.Dock == DockStyle.Fill)
            {
                cWidth = xtraScrollableControl1.Width;
                cHeight = xtraScrollableControl1.Height;
            }

        }

        private void xtraScrollableControl1_Scroll(object sender, XtraScrollEventArgs e)
        {
            //e.ScrollOrientation
            //this.Text = "x:" + xtraScrollableControl1.AutoScrollPosition.X + ", y:" + xtraScrollableControl1.AutoScrollPosition.Y;
            pnlRangeData.Top = initXrangeTop + xtraScrollableControl1.AutoScrollPosition.Y;
        }

        private void pnlRangeData_Resize(object sender, EventArgs e)
        {
            float stepHeight = (float)(pictureEdit1.Height-20) / 10;
            lcTop.Top = 0;
            lc1.Top = (int)(lcTop.Top + stepHeight);
            lc2.Top = (int)(lc1.Top + stepHeight);
            lc3.Top = (int)(lc2.Top + stepHeight);
            lc4.Top = (int)(lc3.Top + stepHeight);
            lc5.Top = (int)(lc4.Top + stepHeight);
            lc6.Top = (int)(lc5.Top + stepHeight);
            lc7.Top = (int)(lc6.Top + stepHeight);
            lc8.Top = (int)(lc7.Top + stepHeight);
            lc9.Top = (int)(lc8.Top + stepHeight);
            //lcBottom.Top = (int)(lc9.Top + stepHeight);
            lcBottom.Top = pictureEdit1.Height - 20;
        }

        private void pictureEdit1_SizeChanged(object sender, EventArgs e)
        {
            //cWidth = pictureEdit1.Width;
            //cHeight = pictureEdit1.Height;
            //lcBottom.Top = pictureEdit1.Top + pictureEdit1.Height - 22;
            pnlRangeData.Height = pictureEdit1.Height;

            pnlRangeData.Top = initXrangeTop + xtraScrollableControl1.AutoScrollPosition.Y;

        }

        private void xtraScrollableControl1_SizeChanged(object sender, EventArgs e)
        {

        }


    }
}