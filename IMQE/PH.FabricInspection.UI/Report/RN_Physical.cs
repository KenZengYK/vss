using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Linq;
namespace PH.FabricInspection.UI.Report
{
    public partial class RN_Physical : DevExpress.XtraReports.UI.XtraReport
    {
        public string WhereCondition { get; set; }
        public FabricInspectionDataContext DataContext { get; set; }
        public RN_Physical()
        {
            InitializeComponent();
        }

        
        //Xsj20130712:為添加版本控制，並上傳FIS IQCResponseWebSystem功能而添加
        //版本號:  
        public RN_Physical(string VersionNum)
            : this()
        {
            this.xrLblVersionNum.Text = VersionNum;
        }
        //----End

        private void RN_Physical_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string Sql = string.Format("select * from RN_Header {0}", WhereCondition);
            var RN_NumberList = DataContext.ExecuteQuery<RN_Header>(Sql).ToList();
            foreach (RN_Header hd in RN_NumberList)
            {
                hd.ReportFlag = true;
            }
            this.bindingSource1.DataSource = RN_NumberList;

        }

    }
}
