using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.BackEnd
{
    public partial class SumListingCMT : DevExpress.XtraReports.UI.XtraReport
    {
        public SumListingCMT()
        {
            InitializeComponent();

            //物料名稱
            //嘜架封度
            //供應商
            //多種顏色
            //供應商物料尺碼
            //計劃YY數量
            //公司
            //工程號
            //銷售單號
            //預備者
            //確認者
            //審核者
            //打印日期
            //頁碼
        }

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void SetCellLine()
        {
            Font f = this.csDetail.Font;
            //f.Strikeout = false;
            //this.cellIPHtemCode.Font = this.csDetail.Font;
        }

    }
}
