using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI
{
    public partial class FrmPreview : XtraForm
    {
        XtraReport currentReport = null;

        public FrmPreview(XtraReport report)
        {
            InitializeComponent();

            currentReport = report;
            currentReport.PrintingSystem = this.printingSystem1;
            this.pcPreview.PrintingSystem = this.printingSystem1;
            currentReport.CreateDocument();

            //currentReport.ShowDesigner();

            this.Text = this.Text + " [User:" + GlobalInfo.GetCurrentUserId() + "]";
        }

        public static void PreviewReport(string reportFile, object reportData)
        {
            XtraReport1 xp = new XtraReport1();
            xp.LoadLayout(reportFile);
            xp.DataSource = reportData;
            FrmPreview frmPreview = new FrmPreview(xp);
            frmPreview.ShowDialog();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            currentReport.ShowDesignerDialog();
        }

        private void sbPrevious_Click(object sender, EventArgs e)
        {
            pcPreview.SelectPrevPage();
        }

        private void sbNext_Click(object sender, EventArgs e)
        {
            pcPreview.SelectNextPage();

        }

        private void sbPrint_Click(object sender, EventArgs e)
        {
            pcPreview.PrintingSystem.PrintDlg();
            //pcPreview.PrintingSystem.Print();

        }


        //Xsj20120910:���F�K�[����۰ʤW��Web�\��ӼW�[
        #region

        public string RepTitle { get; set; }

        public PH.FabricInspection.BO.Fabric_Insp_Header FISHeader
        {
            get
            {
                return this.WebManager.FISHeader;
            }
            set
            {
                this.WebManager.FISHeader = value;
            }
        }
        private WebSiteDireManager WebManager = new WebSiteDireManager();

        //Xsj:20120910�N����O�s��Response Web Site
        private void sBtn_SendToWebSite_Click(object sender, EventArgs e)
        {
            try
            {
                //Xsj:��������O�s���|
                if (DialogResult.Yes == MessageBox.Show("�A�T�w�n�W�Ƿ�e�����WebSide�ܡH", "�W�ǽT�{", MessageBoxButtons.YesNo))
                {
                    this.Cursor = Cursors.WaitCursor;
                    if (WebManager.CreateWebSiteDirec())
                    {
                        string path = this.WebManager.CurrReportDirectoryAtWebSite + @"\" + this.RepTitle;
                        currentReport.ExportToPdf(path);
                        this.WebManager.CreateResponseFlagInfoWeb();
                        //string fileName = this.RepTitle;
                        //string extendName = this.RepTitle.Substring(this.RepTitle.LastIndexOf('.'));
                        //string remark = string.Format("����[{0}]�����˳��i[{1}]�C", this.FISHeader.Item_Desc, this.RepTitle.Substring(0, this.RepTitle.LastIndexOf('.')));
                        //this.WebManager.CreateFileRemarkWeb(fileName, extendName, remark, false, 1);
                        MessageBox.Show("�W�ǳ����\�I", "�W�Ǧ��\");
                    }
                    else
                    {
                        MessageBox.Show("�Ы�WebSite��󧨤����\�A�W�ǳ����ѡC���ˬd�q���P[IQCResponseWebSystem]�D�����s�q�ʡI", "���Ѵ���", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), "���Ѵ���", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                this.Cursor = Cursors.Default;
                WebManager.CloseNetConnect();
            }
        }

        public static void ShowReport(string reportFile, object reportData, string ReportTitle, PH.FabricInspection.BO.Fabric_Insp_Header FISHeader)
        {
            XtraReport1 xp = new XtraReport1();
            xp.LoadLayout(reportFile);
            xp.DataSource = reportData;
            FrmPreview frmPreview = new FrmPreview(xp);
            frmPreview.RepTitle = ReportTitle;
            frmPreview.FISHeader = FISHeader;
            frmPreview.ShowDialog();
        }


        public static void ShowReport(XtraReport Rpt, object reportData, string ReportTitle, PH.FabricInspection.BO.Fabric_Insp_Header FISHeader)
        {
            Rpt.DataSource = reportData;
            FrmPreview frmPreview = new FrmPreview(Rpt);
            frmPreview.RepTitle = ReportTitle;
            frmPreview.FISHeader = FISHeader;
            frmPreview.ShowDialog();
        }
        #endregion




    }
}