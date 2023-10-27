using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using PH.Platform.BO;
using System.Linq;
using System.Data;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FullInspectionFourDefectReport : DevExpress.XtraReports.UI.XtraReport
    {
        public FullInspectionFourDefectReport(string DateStart, string DateDue,  string ByMonthOrWeek, string Cust)
        {
            InitializeComponent();

            // "Weekly" : (rgByWeekOrMonth.SelectedIndex == 1 ? "Monthly" : "Daily");
            xrTableCell29.Text = ByMonthOrWeek == "Weekly" ? "Week 周" : (ByMonthOrWeek == "Monthly" ? "Month 月" : " Date 日期");

            string Str = "exec FullInspectionFourDefect  '{0}','{1}', '{2}','{3}'";

            Str = string.Format(Str, DateStart, DateDue, ByMonthOrWeek, Cust);
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            List<FourDefectCode> FourDefectCodesList = db.FourDefectCodes.ToList();
            int ii= 0;
            foreach (FourDefectCode Obj in FourDefectCodesList.OrderBy(dr=>dr.Sort)) 
            {
                ii++;

                this.FindControl("xrDefect" + ii.ToString(), false).Text = Obj.DefectCode + "\r\n" + Obj.DefectNameEN + " / " + Obj.DefectNameCN;
            }

            //xrDefect1


            List<FullInspectionFourDefectClass> Alist = db.ExecuteDataSet(Str, new DataSet(), "Opts").Tables[0].AsEnumerable().Select(dr => new FullInspectionFourDefectClass 
            {
                Factory = dr["Factory"].ToString(),
                WorkShop = dr["WorkShop"].ToString(),
                ProductQty = string.IsNullOrEmpty(dr["ProductQty"].ToString()) ?Convert.ToInt32( null ) : Convert.ToInt32(dr["ProductQty"].ToString()),
                AYear = dr["AYear"].ToString(),
                TimeType = dr["TimeType"].ToString(),
                Flag = dr["Flag"].ToString(),
                TtlDefectPsc = Cal(dr["TtlDefectPsc"].ToString()),
                DefectCodeQty1 = Cal(dr["DefectCodeQty1"].ToString()),
                DefectCodeRank1 = Cal(dr["DefectCodeRank1"].ToString()),
                DefectCodeQty2 = Cal(dr["DefectCodeQty2"].ToString()),
                DefectCodeRank2 = Cal(dr["DefectCodeRank2"].ToString()),
                DefectCodeQty3 = Cal(dr["DefectCodeQty3"].ToString()),
                DefectCodeRank3 = Cal(dr["DefectCodeRank3"].ToString()),
                DefectCodeQty4 = Cal(dr["DefectCodeQty4"].ToString()),
                DefectCodeRank4 = Cal(dr["DefectCodeRank4"].ToString()), 
            }).ToList();

            this.bindingSource1.DataSource = Alist;

        }

        public int? Cal(string AQty) 
        {
            if (string.IsNullOrEmpty(AQty))
            {
                return null;
            }
            else 
            {
               return  Convert.ToInt32(AQty);
            }
        }

        public string StratTimetye = ""; public string LastType = "";
        public string StratFty = ""; public string LastFty = "";

        private void xrTableRow6_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("TimeType") == null) return;
            if (StratTimetye != "" || LastType != "")
            {
                LastType = StratTimetye;
                StratTimetye = this.GetCurrentColumnValue("TimeType").ToString();
                if (StratTimetye == LastType)
                {
                    xrTimeType.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    xrTimeType.Text = "";
                }
                else
                {
                    xrTimeType.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top)));
                }

            }
            else {    StratTimetye = this.GetCurrentColumnValue("TimeType").ToString(); }

            if (this.GetCurrentColumnValue("Factory") == null) return;
            if (StratFty != "" || LastFty != "")
            {
                LastFty = StratFty;
                StratFty = this.GetCurrentColumnValue("Factory").ToString();
                if ((StratFty == LastFty) && (StratTimetye == LastType))
                {
                    xrFty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
                    xrFty.Text = "";
                }
                else
                {
                    xrFty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top)));
                }

            }
            else { StratFty = this.GetCurrentColumnValue("Factory").ToString(); }


        }

    }
}
