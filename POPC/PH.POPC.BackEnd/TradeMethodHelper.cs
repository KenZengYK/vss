using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.POPC.BO;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;

namespace PH.POPC.BackEnd
{
    public class TradeMethodHelper
    {
        public string LangID
        {
            get;
            set;
        }

        ////由David加入 2022-02-18
        //string GetCompanyTitle(string AReportTitleType)
        //{
        //    if (LangID == "EN")
        //    {
        //        if (AReportTitleType == "Dongguan")
        //        {
        //            return Common.CompanyTitleEN_DG;
        //        }
        //        else if (AReportTitleType == "PYHK")
        //        {
        //            return Common.CompanyTitleEN_PYHK;
        //        }
        //        else if (AReportTitleType == "PHHK")
        //        {
        //            return Common.CompanyTitleEN_PHHK;
        //        }

        //        return Common.CompanyTitleEN_DG;
        //    }
        //    else if (LangID == "TW")
        //    {
        //        if (AReportTitleType == "Dongguan")
        //        {
        //            return Common.CompanyTitleCN_DG;
        //        }
        //        else if (AReportTitleType == "PYHK")
        //        {
        //            return Common.CompanyTitleCN_PYHK;
        //        }
        //        else if (AReportTitleType == "PHHK")
        //        {
        //            return Common.CompanyTitleCN_PHHK;
        //        }

        //        return Common.CompanyTitleCN_DG;
        //    }

        //    return Common.CompanyTitleCN_DG;

        //}


        //-------------------------------Start--------------------------------------------------
        //Xsj20151005:add for china custom control
        public void ShowDifferentTitle(POHeader p, XRTableCell lbCompanyEN, XRTableCell lbCompanyCN, string AReportTitleType)
        {

            //以下代碼由David加入 2022-03-15
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            string BuyerCode = string.IsNullOrEmpty(p.BuyerCode) ? "PHDG" : p.BuyerCode;
            var obj = db.POReportConfigs.FirstOrDefault(o => o.DataType == "BuyerCode" && o.Code == BuyerCode);

            //大標題
            lbCompanyCN.Text = LangID == "TW" ? obj.DescCN : obj.DescEN;
            
            //小標題
            lbCompanyEN.Text = LangID == "TW" ? obj.DescCN : obj.DescEN;

            //隐藏大标题
            lbCompanyCN.Visible = false;


            //switch (p.TradeMethod)
            //{
            //    case "E1":
            //    case "C1": //Xsj:直接進口
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); // AReportTitleType == "Dongguan" ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleEN;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); //AReportTitleType == "Dongguan" ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleCN;
            //        }

            //        //Xsj:直接進口轉國內結轉
            //        //if()

            //        break;

            //    case "E2":
            //    case "C2": //Xsj:國內結轉
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); //AReportTitleType == "Dongguan" ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleEN;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); //AReportTitleType == "Dongguan" ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleCN;
            //        }
            //        break;

            //    case "E3":
            //    case "C3": //Xsj:國內採購
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); //AReportTitleType == "Dongguan" ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleEN;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = GetCompanyTitle(AReportTitleType); //AReportTitleType == "Dongguan" ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN_PYHK;
            //            lbCompanyCN.Text = Common.CompanyTitleCN;
            //        }
            //        break;
            //    //default:
            //    //    lbCompanyEN.Text = _isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            //    //    lbCompanyCN.Text = _isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;

            //}







            //switch (p.TradeMethod)
            //{
            //    case "E1":
            //    case "C1": //Xsj:直接進口
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = Common.CompanyTitleEN_DG;
            //            lbCompanyCN.Text = Common.CompanyTitleEN;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = Common.CompanyTitleCN_DG;
            //            lbCompanyCN.Text = Common.CompanyTitleCN;
            //        }

            //        //Xsj:直接進口轉國內結轉
            //        //if()

            //        break;

            //    case "E2":
            //    case "C2": //Xsj:國內結轉
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = Common.CompanyTitleEN_DG;
            //            lbCompanyCN.Text = Common.CompanyTitleEN;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = Common.CompanyTitleCN_DG;
            //            lbCompanyCN.Text = Common.CompanyTitleCN;
            //        }
            //        break;

            //    case "E3":
            //    case "C3": //Xsj:國內採購
            //        if (LangID == "EN")
            //        {
            //            lbCompanyEN.Text = "";
            //            lbCompanyCN.Text = Common.CompanyTitleEN_DG;
            //        }
            //        else
            //        {
            //            lbCompanyEN.Text = "";
            //            lbCompanyCN.Text = Common.CompanyTitleCN_DG;
            //        }
            //        break;
            //        //default:
            //        //    lbCompanyEN.Text = _isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            //        //    lbCompanyCN.Text = _isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
            //        break;
            //}
        }
        //-------------------------------End--------------------------------------------------

    }
}
