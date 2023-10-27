using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    /// <summary>
    /// Xsj:創建該類，用於上傳Report到WebSite
    /// </summary>
    public class ReportUpDateToWebSiteHelper
    {
        /// <summary>
        /// Xsj:上傳結果反饋信息
        /// </summary>
        public string NoteMessage
        {
            get;
            set;
        }

        /// <summary>
        /// 更新RN報表到WebSite
        /// </summary>
        /// <param name="RNHeader"></param>
        /// <param name="rpt"></param>
        /// <param name="VersionTxt"></param>
        /// <returns></returns>
        public bool UpDateReportFromRNToWebSite(RN_Header RNHeader, DevExpress.XtraReports.UI.XtraReport rpt, string VersionTxt,string UpdateFileTitle)
        {
            bool result = true;
            WebSiteDireManager WebManager = new WebSiteDireManager();
            WebManager.FISHeader = new Fabric_Insp_Header();
            //RN_Header RNHeader = this.BindingSource.Current as RN_Header;
            WebManager.FISHeader.Item_No = RNHeader.Item_No;
            WebManager.FISHeader.Stock_In_Date = RNHeader.Stock_In_Date;
            WebManager.FISHeader.Lot_Id = "";
            WebManager.FISHeader.PO = RNHeader.PO_NO;
            WebManager.FISHeader.ProjectNo = RNHeader.Project_NO;
            //RNHeader
            WebManager.RNHeader = RNHeader;

            PH.FabricInspection.BO.FabricInspectionDataContext dc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
            PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = dc.Fabric_Insp_Headers.Where(p => p.Item_No == RNHeader.Item_No && p.Stock_In_Date == RNHeader.Stock_In_Date).FirstOrDefault();
            if (fisHeader != null)
            {
                WebManager.FISHeader.Supplier_Code = fisHeader.Supplier_Code;
                WebManager.FISHeader.Item_Desc = fisHeader.Item_Desc;
            }

            string versionStr = VersionTxt;
            string RepTitle = UpdateFileTitle;
            try
            {
                //Xsj:獲取報表的保存路徑
                if (WebManager.CreateReportDirec())
                {
                    string path = WebManager.CurrReportDirectoryAtWebSite + @"\" + RepTitle;
                    rpt.ExportToPdf(path);
                    WebManager.CreateResponseFlagInfoWeb();
                    if (WebManager.FISHeader.Supplier_Code != null)
                    {
                        string fileName = RepTitle;
                        string extendName = RepTitle.Substring(RepTitle.LastIndexOf('.'));
                        string rejectReason = RNHeader.RejectReasonStr;
                        string remark = string.Format("Reject Reason:{0}", rejectReason);
                        WebManager.CreateFileRemarkWeb(fileName, extendName, remark, false, 1);
                    }
                }
                else
                {
                    this.NoteMessage="在WebSite主機創建文件夾失敗，報表上傳中止！";
                }
            }
            catch (Exception ex)
            {
                result = false;
                this.NoteMessage=ex.Message.ToString();
            }
            finally
            {
                WebManager.CloseNetConnect();
            }
            return result;
        }

    }
}
