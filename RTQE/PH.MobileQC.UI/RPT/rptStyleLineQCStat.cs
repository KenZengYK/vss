using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.UI.CS.DataQuery;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class StyleLineQCStat : DevExpress.XtraReports.UI.XtraReport
    {
        public StyleLineQCStat(object ADataSource, string line, string style)
        {
            InitializeComponent();

            this.lb_Line.Text = line;
            this.lb_Print.Text = style;
            this.lb_Style.Text = DateTime.Now.ToString();

            this.bindingSource1.DataSource = ADataSource;

            string str = "";
            string langid = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            if ("TW,CN".Contains(langid))
            {
                str = "NotePad:" + "\r\n" +
                            "  1.黃色—表示未作Mobile審定" + "\r\n" +
                            "  2.綠色—表示Mobile審定,質量符合要求" + "\r\n" +
                            "  3.紅色—表示Mobile審定,質量不合要求" + "\r\n";
         
            }
            else
            {
                str = "NotePad:" + "\r\n" +
                              "  1.Yellow ----- No Checking" + "\r\n" +
                              "  2.Green ----- Within Quality Requirement" + "\r\n" +
                              "  3.Red ------- Under Quality Requirement" + "\r\n";
            }

            this.xlab_NotePad.Text = str;

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            StyleLineQCStatResult qc = this.GetCurrentRow() as StyleLineQCStatResult;
            if (qc == null) return;

            Color c;
            switch (qc.StatusTag)
            {
                case 0:
                    c = Color.Yellow;         // str = "未作審查";
                    break;
                case 1:
                    c = Color.Red;               // str = "質量不OK";
                    break;
                default:
                    c = Color.Green;            //str = "質量OK";
                    
                    break;

            }

            this.tbcStatus.BackColor = c;
        }

    }
}
