using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using System.Linq;
using System.Data.Linq;

namespace PH.FabricInspection.UI.Report
{
    public partial class ByRN : DevExpress.XtraReports.UI.XtraReport
    {
        public string WhereCondition { get; set; }
        public string VersionID { get; set; }
        Boolean _ExistsRecordFlag;
        public ByRN()
        {
            InitializeComponent(); 
            this.PrintingSystem.ShowMarginsWarning = false; 
        }

        private void ByRN_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //FabricInspectionDataContext Context=ContextBuilder.CreateContext<FabricInspectionDataContext>()
            //var RN_NumberList = (ContextBuilder.CreateContext<FabricInspectionDataContext>()).RN_Headers.Where(P => P.RN_number == 10);

            string Sql = string.Format("select * from RN_Header {0}", WhereCondition);
            var RN_NumberList = (ContextBuilder.CreateContext<FabricInspectionDataContext>()).ExecuteQuery<RN_Header>(Sql).ToList();

            foreach (RN_Header hd in RN_NumberList)
            {

                #region
                //Xsj:add 格式化Stock-IN-Date為:yyyy-MM-dd
                RN_Header currRNHeader = this.GetCurrentRow() as RN_Header;
                string stockINDate = null;
                if (hd.Stock_In_Date != null)
                {
                    stockINDate = hd.Stock_In_Date;
                    DateTime? dt = null;
                    if (stockINDate.Trim().Length == 6)
                    {
                        dt = DateTime.ParseExact(stockINDate, "yyMMdd", System.Globalization.CultureInfo.GetCultureInfo("en-US"));
                    }
                    else if (stockINDate.Trim().Length == 8)
                    {
                        dt = DateTime.ParseExact(stockINDate, "yyyyMMdd", System.Globalization.CultureInfo.GetCultureInfo("en-US"));
                    }
                    if (dt.HasValue)
                    {
                        hd.Stock_In_Date = dt.Value.ToString("yyyy-MM-dd");
                    }
                }
                //----End
                #endregion

                hd.GetRptDataFlag = true;

                #region 應Shelley的要求： 取消原ID 顯示的判斷邏輯，改為 ID顯示判斷邏輯，取“Reject Reason”非”空白“ID。不區分Defect Reject/Color Reject /PhysicalPropertiesReject

                //hd.DefectRejectsVisible = hd.DefectRejects.Count > 0 ? true : false;
                //hd.ColorRejectsVisible = hd.ColorRejects.Count > 0 ? true : false;
                //hd.PhysicalPropertiesRejectsVisible = hd.PhysicalPropertiesRejects.Count > 0 ? true : false;
 
                #endregion

                #region 20130102 應Shelly的要求，添加 Other 通類類別的的Remark。
                if (!hd.Major_Problem7_Checked)
                {
                    hd.OtherRejectRemark = "";
                }
                else
                {
                    if (hd.OtherRejectRemark != null && hd.OtherRejectRemark.Trim() != "")
                    {
                        hd.OtherRejectRemark = "(" + hd.OtherRejectRemark + ")";
                    }
                }

                #endregion

            }
            this.bindingSource1.DataSource = RN_NumberList;
            Lbl_Version.Text = VersionID;
            _ExistsRecordFlag = RN_NumberList.Count() > 0 ? true : false; 

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (_ExistsRecordFlag)
            {
                DetailReport.Visible = Convert.ToBoolean(GetCurrentColumnValue("DefectRejectsVisible").ToString()) ? true : false;
                DetailReport1.Visible = Convert.ToBoolean(GetCurrentColumnValue("ColorRejectsVisible").ToString()) ? true : false;
                DetailReport2.Visible = Convert.ToBoolean(GetCurrentColumnValue("PhysicalPropertiesRejectsVisible").ToString()) ? true : false;
            }

        }

    }
}
