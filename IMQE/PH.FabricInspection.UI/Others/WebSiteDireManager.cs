using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    /// <summary>
    /// Xsj:該類只要用於FIS與WebSystem的交互
    /// </summary>
    public class WebSiteDireManager
    {
        #region 屬性


        public PH.FabricInspection.BO.Fabric_Insp_Header FISHeader
        {
            get
            {
                return this._fisHeader;
            }
            set
            {
                this._fisHeader = value;
            }
        }
        private PH.FabricInspection.BO.Fabric_Insp_Header _fisHeader;

        /// <summary>
        /// Xsj2013-1-11退料號
        /// </summary>
        //public int RN_Number
        //{
        //    get;
        //    set;
        //}

        public PH.FabricInspection.BO.RN_Header RNHeader
        {
            get;
            set;
        }

        /// <summary>
        /// Xsj:獲取FISIQCResponseWebSystem的IP地址
        /// </summary>
        private string WebSiteIp
        {
            get
            {
                if (this._webSiteIp == null)
                {
                    PH.FabricInspectPicTransferBO.DbConnectInfo dc = new PH.FabricInspectPicTransferBO.DbConnectInfo();
                    PH.FabricInspectPicTransferBO.AppParameterWeb webSiteIp = dc.CurrDataContext.AppParameterWebs.Where(p => p.ParameterName == "WebsiteIP").FirstOrDefault();
                    if (webSiteIp != null)
                    {
                        this._webSiteIp = webSiteIp.ParameterValue;
                    }
                }
                return this._webSiteIp;
            }
        }
        private string _webSiteIp;

        /// <summary>
        /// Xsj:回復文件的公享根目錄:IP\ResponseFile\
        /// </summary>
        public string SupplierResponseFileDirectory
        {
            get
            {
                if (_supplierReponseFilePath == null)
                {
                    if (this.WebSiteIp != null)
                    {
                        if (this.WebSiteIp.StartsWith(@"\\"))
                        {
                            this._supplierReponseFilePath = this.WebSiteIp + @"\ResponseFile\" + this.FISHeader.Supplier_Code + @"\";
                        }
                        else
                        {
                            this._supplierReponseFilePath = @"\\" + this.WebSiteIp + @"\ResponseFile\" + this.FISHeader.Supplier_Code + @"\";
                        }
                    }
                }
                if (this._supplierReponseFilePath != null)
                {
                    if (!System.IO.Directory.Exists(@"\\" + this.WebSiteIp + @"\ResponseFile\"))
                    {
                        ConnectToWebSite();
                    }
                }
                return this._supplierReponseFilePath;
            }
        }
        private string _supplierReponseFilePath = null;

        /// <summary>
        /// Xsj:當前Item+Stock_In_Date的根目錄
        /// </summary>
        public string ItemStockInDateRootDirectory
        {
            get
            {
                if (this.SupplierResponseFileDirectory != null)
                {
                    this._itemStockInDateRootDirectory = this.SupplierResponseFileDirectory + this.FISHeader.Item_No + "_" + this.FISHeader.Stock_In_Date + @"\";
                }
                return this._itemStockInDateRootDirectory;
            }
        }
        private string _itemStockInDateRootDirectory = null;


        //Xsj:20121129應采購的要求添加Attachment功能，用於上傳手工拍攝的照片
        public string CurrAttachmentDirectoryAtWebSite
        {
            get
            {
                if (this._currAttachmentDirectoryAtWebSite == null)
                {
                    this._currAttachmentDirectoryAtWebSite = this.ItemStockInDateRootDirectory + @"Attachments";
                }
                return this._currAttachmentDirectoryAtWebSite;
            }
        }
        private string _currAttachmentDirectoryAtWebSite;

        /// <summary>
        /// Xsj:當前Lot_ID對應的的Batch目錄
        /// </summary>
        public string ItemBatchDirectory
        {
            get
            {
                if (this.ItemStockInDateRootDirectory != null)
                {
                    this._itemBatchDirectory = this.ItemStockInDateRootDirectory + @"IQCPhotos\" + this.FISHeader.Supplich_Batch + @"\";
                }
                return this._itemBatchDirectory;
            }
        }
        private string _itemBatchDirectory = null;

        /// <summary>
        /// Xsj:當前Lot_ID對應的的Roll_No目錄
        /// </summary>
        public string ItemRollNoDirectory
        {
            get
            {
                this._itemRollNoDirectory = this.ItemBatchDirectory + this.FISHeader.Roll_No + @"\";
                return this._itemRollNoDirectory;
            }
        }
        private string _itemRollNoDirectory = null;


        /// <summary>
        /// Xsj:獲取當前Lot_Id圖片對應WebSite上的文件夾
        /// 結建邏輯：
        /// 1.如果存在Batch No和Roll No都存在:IQCFlag路徑\Batch No+Roll No
        /// 2.如果Batch No或Roll No不存在:IQCFlag路徑\Batch No或Roll No+I.D.No
        /// </summary>
        public string CurrPhotoDirectoryAtWebSite
        {
            get
            {
                if (this._currPhotoDirecoryAtWebSite == null)
                {
                    this._currPhotoDirecoryAtWebSite = this.ItemRollNoDirectory;
                }
                return this._currPhotoDirecoryAtWebSite;
            }
        }
        private string _currPhotoDirecoryAtWebSite;

        /// <summary>
        /// Xsj:獲取當前Lot_Id報表對應WebSite上的文件夾
        /// </summary>
        public string CurrReportDirectoryAtWebSite
        {
            get
            {
                if (this._currReportDirectoryAtWebSite == null)
                {
                    this._currReportDirectoryAtWebSite = this.ItemStockInDateRootDirectory + @"IQCReports";
                }
                return this._currReportDirectoryAtWebSite;
            }
        }
        private string _currReportDirectoryAtWebSite;


        ///// <summary>
        ///// Xsj:是否顯示提示框
        ///// </summary>
        //public bool IsShowNote
        //{
        //    get
        //    {
        //        return this._isShowNote;
        //    }
        //    set
        //    {
        //        this._isShowNote = value;
        //    }
        //}
        //private bool _isShowNote = true;

        #endregion


        #region 方法

        /// <summary>
        /// Xsj:建立和清理FIS與WebSystem主機的網絡連接
        /// </summary>
        private void ConnectToWebSite()
        {
            CloseNetConnect();
            CreateNetConnect();
        }



        /// <summary>
        /// Xsj20120904:連通WebSite.
        /// </summary>
        /// <returns></returns>
        public bool CreateNetConnect()
        {
            bool Flag = false;
            string ServerName = this.WebSiteIp;
            if (!ServerName.StartsWith(@"\\"))
            {
                ServerName = @"\\" + ServerName;
            }
            try
            {
                System.Diagnostics.Process proc = new System.Diagnostics.Process();
                try
                {
                    proc.StartInfo.FileName = "cmd.exe";
                    proc.StartInfo.UseShellExecute = false;
                    proc.StartInfo.RedirectStandardInput = true;
                    proc.StartInfo.RedirectStandardOutput = true;
                    proc.StartInfo.RedirectStandardError = true;
                    proc.StartInfo.CreateNoWindow = true;
                    proc.Start();

                    //Dos命令格式："net use " + ServerName + "  /User:" + UserName + "  " + Pwd + "  /PERSISTENT:YES";  
                    //Xsj:重新建立連接
                    string dosLine = @" net use " + ServerName + @"\ResponseFile  /User:FisPhotoCut FisPhotoCut  ";  ///PERSISTENT:YES
                    proc.StandardInput.WriteLine(dosLine);
                    proc.StandardInput.WriteLine("exit");
                    while (!proc.HasExited)
                    {
                        proc.WaitForExit(1000);
                    }
                    string errormsg = proc.StandardError.ReadToEnd();
                    proc.StandardError.Close();
                    if (string.IsNullOrEmpty(errormsg))
                    {
                        Flag = true;
                    }
                    else
                    {
                        Exception ex = new Exception("連通WebSite主機的的ResponseFile文件夾失敗，你將沒法上傳。");
                        throw ex;
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    proc.Close();
                    proc.Dispose();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Flag;
        }


        /// <summary>
        /// Xsj20120905:關閉可以存在的網絡連接
        /// </summary>
        public void CloseNetConnect()
        {
            string ServerName = this.WebSiteIp;
            if (!ServerName.StartsWith(@"\\"))
            {
                ServerName = @"\\" + ServerName;
            }
            System.Diagnostics.Process proc = new System.Diagnostics.Process();
            proc.StartInfo.FileName = "cmd.exe";
            proc.StartInfo.UseShellExecute = false;
            proc.StartInfo.RedirectStandardInput = true;
            proc.StartInfo.RedirectStandardOutput = true;
            proc.StartInfo.RedirectStandardError = true;
            proc.StartInfo.CreateNoWindow = true;
            proc.Start();

            //Dos命令格式："net use " + ServerName + "  /User:" + UserName + "  " + Pwd + "  /PERSISTENT:YES";
            //Xsj:先移除原有的連接
            string dosLine = @" net use " + ServerName + @"\ResponseFile   /del /y";
            proc.StandardInput.WriteLine(dosLine);
            proc.StandardInput.WriteLine("exit");
            string errormsg = proc.StandardError.ReadToEnd();
            proc.StandardError.Close();
            while (!proc.HasExited)
            {
                proc.WaitForExit(500);
            }
            proc.Close();
            proc.Dispose();

        }


        /// <summary>
        /// Xsj:創建功相關的Web文件夾
        /// </summary>
        /// <returns></returns>
        public bool CreateWebSiteDirec()
        {
            bool result = true;
            try
            {
                //生成Item_No+Stock_In_Date的IQCFlag表記錄對應的根文件夾
                if (!System.IO.Directory.Exists(this.ItemStockInDateRootDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemStockInDateRootDirectory);
                }
                //生成Batch文件夾
                if (!System.IO.Directory.Exists(this.ItemBatchDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemBatchDirectory);
                }
                //生成Roll_No文件夾
                if (!System.IO.Directory.Exists(this.ItemRollNoDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemRollNoDirectory);
                }
                //Xsj20121129:應採購的要求，添加Attachment功能。
                if (!System.IO.Directory.Exists(this.CurrAttachmentDirectoryAtWebSite))
                {
                    System.IO.Directory.CreateDirectory(this.CurrAttachmentDirectoryAtWebSite);
                }
                //生成Report文件夾
                if (!System.IO.Directory.Exists(this.CurrReportDirectoryAtWebSite))
                {
                    System.IO.Directory.CreateDirectory(this.CurrReportDirectoryAtWebSite);
                }
            }
            catch (Exception ex)
            {
                result = false;
                throw ex;

            }
            return result;
        }

        /// <summary>
        /// Xsj：刪除没有ResponseFlagInfo记录的文件夾
        /// </summary>
        /// <returns></returns>
        public void DeleteWebSiteDirecWithoutResponseFlagInfo()
        {
            string item_No = this.FISHeader.Item_No;
            string stock_In_Date = this.FISHeader.Stock_In_Date;
            string lot_Id = this.FISHeader.Lot_Id;
            PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = new PH.FabricInspectPicTransferBO.DbConnectInfo().CurrDataContext;
            PH.FabricInspectPicTransferBO.ResponseFlagInfoWeb iqcFlag = dc.ResponseFlagInfoWebs.Where(p => p.Item_No == item_No && p.Stock_In_Date == stock_In_Date).FirstOrDefault();
            if (iqcFlag == null)
            {
                //Xsj:清除沒有ResponseFlagInfoWeb記錄的WebSite文件夾
                if (System.IO.Directory.Exists(this.ItemStockInDateRootDirectory))
                {
                    System.IO.Directory.Delete(this.ItemStockInDateRootDirectory, true);
                }
            }
        }

        /// <summary>
        /// Xsj:創建照片文件夾
        /// </summary>
        /// <returns></returns>
        public bool CreatePhotoDirec()
        {
            bool result = true;
            try
            {
                DeleteWebSiteDirecWithoutResponseFlagInfo();
                //生成Item_No+Stock_In_Date的IQCFlag表記錄對應的根文件夾
                if (!System.IO.Directory.Exists(this.ItemStockInDateRootDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemStockInDateRootDirectory);
                }
                //生成Batch文件夾
                if (!System.IO.Directory.Exists(this.ItemBatchDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemBatchDirectory);
                }
                //生成Roll_No文件夾
                if (!System.IO.Directory.Exists(this.ItemRollNoDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemRollNoDirectory);
                }
            }
            catch (Exception ex)
            {
                //result = false;
                Exception myEx = new Exception("在WebSite主機上創建[IQCPhotos]文件夾失敗。失敗原因：\r\n" + ex.Message.ToString());
                throw myEx;
            }
            return result;
        }

        /// <summary>
        /// Xsj:創建報表文件夾
        /// </summary>
        /// <returns></returns>
        public bool CreateReportDirec()
        {
            bool result = true;
            try
            {
                DeleteWebSiteDirecWithoutResponseFlagInfo();
                //生成Item_No+Stock_In_Date的IQCFlag表記錄對應的根文件夾
                if (!System.IO.Directory.Exists(this.ItemStockInDateRootDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.ItemStockInDateRootDirectory);
                }
                //生成Report文件夾
                if (!System.IO.Directory.Exists(this.CurrReportDirectoryAtWebSite))
                {
                    System.IO.Directory.CreateDirectory(this.CurrReportDirectoryAtWebSite);
                }
            }
            catch (Exception ex)
            {
                //result = false;
                Exception myEx = new Exception("在WebSite主機上創建[IQCReports]文件夾失敗。失敗原因：\r\n" + ex.Message.ToString());
                throw myEx;
            }
            return result;
        }

        /// <summary>
        /// Xsj:產生ResponseFlagInfoWeb記錄
        /// </summary>
        public void CreateResponseFlagInfoWeb()
        {
            try
            {
                //Xsj2012-04-24:將數據寫入Web系統的數據表中 
                //Xsj2012-04-27檢查是否已有當前Item_No+Stock_In_Date的IQCFlag表記錄
                PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = new PH.FabricInspectPicTransferBO.DbConnectInfo().CurrDataContext;
                if (this.FISHeader == null)
                {
                    Exception myEx = new Exception("獲取當前Defect的Fabric_Insp_Header 信息失敗，操作中止!");
                    throw myEx;
                }

                string item_No = this.FISHeader.Item_No;
                string stock_In_Date = this.FISHeader.Stock_In_Date;
                string lot_Id = this.FISHeader.Lot_Id;
                PH.FabricInspectPicTransferBO.ResponseFlagInfoWeb iqcFlag = dc.ResponseFlagInfoWebs.Where(p => p.Item_No == item_No && p.Stock_In_Date == stock_In_Date).FirstOrDefault();
                if (iqcFlag == null)
                {
                    //Xsj:清除沒有ResponseFlagInfoWeb記錄的WebSite文件夾
                    //DeleteWebSiteDirec();
                    //不存在當前Item_No+Stock_In_Date的IQCFlag表記錄，則創建相關記錄。
                    iqcFlag = new PH.FabricInspectPicTransferBO.ResponseFlagInfoWeb();
                    iqcFlag.Lot_Id = this.FISHeader.Lot_Id;
                    iqcFlag.SupplierCode = this.FISHeader.Supplier_Code;
                    iqcFlag.Item_No = this.FISHeader.Item_No;
                    iqcFlag.Item_Desc = this.FISHeader.Item_Desc;
                    iqcFlag.PO = this.FISHeader.PO;
                    iqcFlag.ProjectNo = this.FISHeader.ProjectNo;
                    iqcFlag.IQCFlag = this.FISHeader.Item_No + "_" + this.FISHeader.Stock_In_Date;
                    iqcFlag.Stock_In_Date = this.FISHeader.Stock_In_Date;
                    iqcFlag.PurStatus = "0";
                    iqcFlag.CreateUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                    iqcFlag.CreateDate = DateTime.Now;
                    if (this.RNHeader != null)
                    {
                        iqcFlag.RN_number = this.RNHeader.RN_number;
                        foreach (PH.FabricInspection.BO.RN_Detail rnDetailItem in this.RNHeader.RN_Details)
                        {
                            iqcFlag.Lot_Id += rnDetailItem.Lot_Id + "、";
                        }
                        if (iqcFlag.Lot_Id != null && iqcFlag.Lot_Id.EndsWith("、"))
                        {
                            iqcFlag.Lot_Id = iqcFlag.Lot_Id.Substring(0, iqcFlag.Lot_Id.Length - 1);
                        }

                    }
                    RecordRejectReason(iqcFlag);
                    dc.ResponseFlagInfoWebs.InsertOnSubmit(iqcFlag);
                }
                else
                {
                    if (!iqcFlag.RN_number.HasValue && this.RNHeader !=null)
                    {
                        iqcFlag.RN_number = this.RNHeader.RN_number;
                    }

                    if (!string.IsNullOrEmpty(lot_Id))
                    {
                        if (iqcFlag.Lot_Id.IndexOf(this.FISHeader.Lot_Id) == -1)
                        {
                            iqcFlag.Lot_Id += "," + this.FISHeader.Lot_Id;
                        }
                    }

                    if (!string.IsNullOrEmpty(this.FISHeader.PO))
                    {
                        if (string.IsNullOrEmpty(iqcFlag.PO))
                        {
                            iqcFlag.PO = this.FISHeader.PO;
                        }
                        else if (iqcFlag.PO.IndexOf(this.FISHeader.PO) == -1)
                        {
                            iqcFlag.PO += "," + this.FISHeader.PO;
                        }
                    }

                    if (!string.IsNullOrEmpty(this.FISHeader.ProjectNo))
                    {
                        if (string.IsNullOrEmpty(iqcFlag.ProjectNo))
                        {
                            iqcFlag.ProjectNo = this.FISHeader.ProjectNo;
                        }
                        else if (iqcFlag.ProjectNo.IndexOf(this.FISHeader.ProjectNo) == -1)
                        {
                            iqcFlag.ProjectNo += "," + this.FISHeader.ProjectNo;
                        }
                    }

                    RecordRejectReason(iqcFlag);
                }
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                Exception myEx = new Exception("創建[FlagInfoWeb]批號記錄信息失敗。\r\n" + ex.Message.ToString());
                throw myEx;
            }
        }

        private void RecordRejectReason(PH.FabricInspectPicTransferBO.ResponseFlagInfoWeb iqcFlag)
        {
            //Xsj:如果批次已作了RN，則需要記錄RN信息
            PH.FabricInspection.BO.FabricInspectionDataContext fisDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();
            PH.FabricInspection.BO.RN_Header rnHeader = fisDc.RN_Headers.Where(p => p.Item_No == this.FISHeader.Item_No && p.Stock_In_Date == this.FISHeader.Stock_In_Date).FirstOrDefault();
            
            if (rnHeader != null)
            {
            /*
                iqcFlag.RN_number = rnHeader.RN_number;

                string rejectReason = null;
                if (rnHeader.Major_Problem1_Checked)
                {
                    rejectReason += rnHeader.Major_Problem1 + "、";
                }
                if (rnHeader.Major_Problem2_Checked)
                {
                    rejectReason += rnHeader.Major_Problem2 + "、";
                }
                if (rnHeader.Major_Problem3_Checked)
                {
                    rejectReason += rnHeader.Major_Problem3 + "、";
                }
                if (rnHeader.Major_Problem4_Checked)
                {
                    rejectReason += rnHeader.Major_Problem4 + "、";
                }
                if (rnHeader.Major_Problem5_Checked)
                {
                    rejectReason += rnHeader.Major_Problem5 + "、";
                }
                if (rnHeader.Major_Problem6_Checked)
                {
                    rejectReason += rnHeader.Major_Problem6 + "、";
                }
                if (rnHeader.Major_Problem7_Checked)
                {
                    rejectReason += rnHeader.OtherRejectRemark + "、";
                }
                if (rnHeader.Major_Problem8_Checked)
                {
                    rejectReason += rnHeader.Major_Problem8 + "、";
                }

                if (rejectReason != null && rejectReason.EndsWith("、"))
                {
                     rejectReason= rejectReason.Substring(0, rejectReason.Length - 1);
                }

                if (rejectReason != iqcFlag.RejectReason)
                {
                    iqcFlag.RejectReason = rejectReason;
                }*/
                iqcFlag.RejectReason = rnHeader.RejectReasonStr;
            }
        }

        /// <summary>
        /// Xsj:產生FileRemarkWeb記錄
        /// </summary>
        /// <param name="ImgName"></param>
        /// <param name="ExtendName"></param>
        /// <param name="Remark"></param>
        public void CreateFileRemarkWeb(string FileName, string ExtendName, string Remark, bool isPhoto, short RemarkFlag)
        {
            try
            {
                PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = new PH.FabricInspectPicTransferBO.DbConnectInfo().CurrDataContext;
                //Xsj20120905:自動產生File的Rmark信息
                string fileName = FileName;
                string extendName = ExtendName;
                PH.FabricInspectPicTransferBO.FileRemarkWeb fileWebRemark = dc.FileRemarkWebs.Where(p => p.SupplierName == this.FISHeader.Supplier_Code &&
                                                                                                      p.IQCFlag == this.FISHeader.Item_No + "_" + this.FISHeader.Stock_In_Date &&
                                                                                                      p.RemarkFlag == RemarkFlag && p.FileName.IndexOf(fileName) != -1).FirstOrDefault();
                if (fileWebRemark == null)
                {
                    fileWebRemark = new PH.FabricInspectPicTransferBO.FileRemarkWeb();
                    fileWebRemark.CreateDate = DateTime.Now;
                    fileWebRemark.CreateUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                    fileWebRemark.FileName = fileName;
                    fileWebRemark.BatchRollNo = this.FISHeader.Roll_No;
                    fileWebRemark.IQCFlag = this.FISHeader.Item_No + "_" + this.FISHeader.Stock_In_Date;
                    fileWebRemark.RemarkFlag = Convert.ToInt16(isPhoto ? 0 : 1);
                    fileWebRemark.SupplierName = this.FISHeader.Supplier_Code;
                    fileWebRemark.Remark = Remark;
                    dc.FileRemarkWebs.InsertOnSubmit(fileWebRemark);
                }
                else
                {
                    if (fileWebRemark.Remark == null || fileWebRemark.Remark.Trim() == "")
                    {
                        fileWebRemark.Remark = Remark;
                    }
                }
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                Exception myEx = new Exception("創建[FileRemarkWeb]文件備注信息失敗。\r\n" + ex.Message.ToString());
                throw myEx;
            }

        }

        #endregion
    }
}
