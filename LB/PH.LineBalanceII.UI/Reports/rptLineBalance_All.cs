using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LineBalanceII.BO;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class rptLineBalance_All : DevExpress.XtraReports.UI.XtraReport
    {
        private StyleMaster CurMaster;
        private string FAE = "A";
        private string[,] AryList;
        private string[,] AryLeft;
        private string[] AryBott;
        public rptLineBalance_All(StyleMaster master,string fae,string[,] arylst,string[,] leftvaelues,string[] bottvalues)
        {
            InitializeComponent();
            CurMaster = master;
            FAE = fae;
            AryList = arylst;
            AryLeft = leftvaelues;
            AryBott = bottvalues;
            rptAttachInfo _subrpt = new rptAttachInfo(master, AryLeft, AryBott,false);
           // this.xrsubRpt.ReportSource = _subrpt;
            
            PrepareData();

        }

        private void PrepareData()
         {
            //lblJKLM7_O.Text ; lblJKLM7_R.Text ;lblJKLM7_Y.Text --勞動力合計
            //lblJKLM8_O.Text; lblJKLM8_R.Text ;lblJKLM8_Y.Text --工作位 (衣車+手工臺) 合計
            //lblJKLM13_O.Text; lblJKLM13_R.Text;lblJKLM13_Y.Text --拉平衡率

            if (FAE == "A")
                bsBalance.DataSource = CurMaster.StyleProcedures;
            else if (FAE == "E")
                bsBalance.DataSource = CurMaster.StyleProcedure_Es;
            else if (FAE == "F")
                bsBalance.DataSource = CurMaster.StyleProcedure_Fs;        
         }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTcA01.Text = AryList[0, 0]; xrTcA02.Text = AryList[0, 1]; xrTcA03.Text = AryList[0, 2];
            xrTcB01.Text = AryList[1, 0]; xrTcB02.Text = AryList[1, 1]; xrTcB03.Text = AryList[1, 2];
            xrTcC01.Text = AryList[2, 0]; xrTcC02.Text = AryList[2, 1]; xrTcC03.Text = AryList[2, 2];
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTCustStyle.Text = CurMaster.KHKH;
            xrTPhStyle.Text = CurMaster.PHKH;
            xrTType.Text = CurMaster.CPLB;
            xrTBase.Text = CurMaster.SizeYJ;
            xrTZh.Text = CurMaster.ZH;
            xrTEdition.Text = CurMaster.Edition.ToString();
            xrLabel2.Text = "組合工序單 " + this.CurMaster.ZH;

        }

        


    }
}
