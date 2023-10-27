using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class FrmImageViewer : Form
    {
        #region 屬性

        public WebSiteDireManager WebManager = new WebSiteDireManager();


        /// <summary>
        /// Xsj:當前窗體是編輯狀態
        /// </summary>
        public bool IsEditing
        {
            get;
            set;
        }

        /// <summary>
        /// Xsj:當前照所對應的PartDefect
        /// </summary>
        public PH.FabricInspection.BO.Fabric_Insp_PartDefect FISPartDefect
        {
            get;
            set;
        }

        public PH.FabricInspection.BO.Fabric_Insp_Header FISHeader
        {
            get
            {
                this._fisHeader = this.FISPartDefect.Fabric_Insp_Header;
                return this._fisHeader;
            }
        }
        private PH.FabricInspection.BO.Fabric_Insp_Header _fisHeader;

        /// <summary>
        /// Xsj:當前檢驗批次的Defect集，用於導航圖片
        /// </summary>
        public List<string> DefectPhotoPathList
        {
            get
            {
                return this._defectPhotoPathList;
            }
            set
            {
                this._defectPhotoPathList = value;
            }
        }
        private List<string> _defectPhotoPathList;

        /// <summary>
        /// Xsj:當前Defect
        /// </summary>
        public string CurrDefectPhotoPath
        {
            get
            {
                return this.ImgPath;
            }
        }

        /// <summary>
        /// Xsj:下一Defect
        /// </summary>
        public string NextDefectPhotoPath
        {
            get
            {
                this._nextDefectPhotoPath = null;
                if (this.DefectPhotoPathList != null)
                {
                    for (int i = 0; i < this.DefectPhotoPathList.Count; i++)
                    {
                        if (this.DefectPhotoPathList[i] == this.CurrDefectPhotoPath)
                        {
                            if (i < this.DefectPhotoPathList.Count - 1)
                            {
                                this._nextDefectPhotoPath = this.DefectPhotoPathList[i + 1];
                            }
                            break;
                        }
                    }
                }
                return this._nextDefectPhotoPath;
            }
        }
        private string _nextDefectPhotoPath;

        /// <summary>
        /// Xsj:上一Defect
        /// </summary>
        public string PreDefectPhotoPath
        {
            get
            {
                this._preDefectPhotoPath = null;
                if (this.DefectPhotoPathList != null)
                {
                    for (int i = 0; i < this.DefectPhotoPathList.Count; i++)
                    {
                        if (this.DefectPhotoPathList[i] == this.CurrDefectPhotoPath)
                        {
                            if (i > 0)
                            {
                                this._preDefectPhotoPath = this.DefectPhotoPathList[i - 1];
                            }
                            break;
                        }
                    }
                }
                return this._preDefectPhotoPath;
            }
        }
        private string _preDefectPhotoPath;

        /// <summary>
        /// Xsj:第一個Defect
        /// </summary>
        public string FirstDefectPhotoPath
        {
            get
            {
                if (this.DefectPhotoPathList != null)
                {
                    _firstDefectPhotoPath = this.DefectPhotoPathList[0];
                }
                return this._firstDefectPhotoPath;
            }
        }
        private string _firstDefectPhotoPath;


        /// <summary>
        /// Xsj:最後一個Defect
        /// </summary>
        public string LastDefectPhotoPath
        {
            get
            {
                if (this.DefectPhotoPathList != null && this.DefectPhotoPathList.Count > 0)
                {
                    this._lastDefectPhotoPath = this.DefectPhotoPathList[this.DefectPhotoPathList.Count - 1];
                }
                return this._lastDefectPhotoPath;
            }
        }
        private string _lastDefectPhotoPath;


        //Xsj:圖片路徑
        public string ImgPath
        {
            get
            {
                return this._imgPath;
            }
            set
            {
                this._imgPath = value;
            }
        }
        private string _imgPath;


        /// <summary>
        /// Xsj:當前操作的圖片
        /// </summary>
        private Image _img
        {
            get
            {
                Image currImage = null;
                if (System.IO.File.Exists(this.ImgPath))
                {
                    currImage = Image.FromFile(this.ImgPath);
                }
                return currImage;
            }
        }

        #region

        ///// <summary>
        ///// Xsj:獲取FISIQCResponseWebSystem的IP地址
        ///// </summary>
        //private string WebSiteIp
        //{
        //    get
        //    {
        //        if (this._webSiteIp == null)
        //        {
        //            PH.FabricInspectPicTransferBO.DbConnectInfo dc = new PH.FabricInspectPicTransferBO.DbConnectInfo();
        //            PH.FabricInspectPicTransferBO.AppParameterWeb webSiteIp = dc.CurrDataContext.AppParameterWebs.Where(p => p.ParameterName == "WebsiteIP").FirstOrDefault();
        //            if (webSiteIp != null)
        //            {
        //                this._webSiteIp = webSiteIp.ParameterValue;
        //                ConnectToWebSite();
        //            }
        //        }
        //        return this._webSiteIp;
        //    }
        //}
        //private string _webSiteIp;



        //private void ConnectToWebSite()
        //{
        //    CloseNetConnect();
        //    CreateNetConnect();
        //}



        ///// <summary>
        ///// Xsj20120904:連通WebSite.
        ///// </summary>
        ///// <returns></returns>
        //public bool CreateNetConnect()
        //{
        //    bool Flag = false;
        //    string ServerName = this.WebSiteIp;
        //    if (!ServerName.StartsWith(@"\\"))
        //    {
        //        ServerName = @"\\" + ServerName;
        //    }
        //    try
        //    {
        //        System.Diagnostics.Process proc = new System.Diagnostics.Process();
        //        try
        //        {
        //            proc.StartInfo.FileName = "cmd.exe";
        //            proc.StartInfo.UseShellExecute = false;
        //            proc.StartInfo.RedirectStandardInput = true;
        //            proc.StartInfo.RedirectStandardOutput = true;
        //            proc.StartInfo.RedirectStandardError = true;
        //            proc.StartInfo.CreateNoWindow = true;
        //            proc.Start();

        //            //Dos命令格式："net use " + ServerName + "  /User:" + UserName + "  " + Pwd + "  /PERSISTENT:YES";  
        //            //Xsj:重新建立連接
        //            string dosLine = @" net use " + ServerName + @"\ResponseFile  /User:FisPhotoCut FisPhotoCut  ";  ///PERSISTENT:YES
        //            proc.StandardInput.WriteLine(dosLine);
        //            proc.StandardInput.WriteLine("exit");
        //            while (!proc.HasExited)
        //            {
        //                proc.WaitForExit(1000);
        //            }
        //            string errormsg = proc.StandardError.ReadToEnd();
        //            proc.StandardError.Close();
        //            if (string.IsNullOrEmpty(errormsg))
        //            {
        //                Flag = true;
        //            }
        //            else
        //            {
        //                MessageBox.Show("連通WebSite的ResponseFile文件夾失敗，你將沒法上傳截圖。");
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            MessageBox.Show("連通WebSite的ResponseFile文件夾失敗，你將沒法上傳截圖。\r\n" + ex.ToString());
        //        }
        //        finally
        //        {
        //            proc.Close();
        //            proc.Dispose();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("連通WebSite的ResponseFile文件夾失敗，你將沒法上傳截圖。\r\n" + ex.ToString());
        //    }
        //    return Flag;
        //}

        ////Xsj20120905:關閉可以存在的網絡連接
        //private void CloseNetConnect()
        //{
        //    string ServerName = this.WebSiteIp;
        //    if (!ServerName.StartsWith(@"\\"))
        //    {
        //        ServerName = @"\\" + ServerName;
        //    }
        //    System.Diagnostics.Process proc = new System.Diagnostics.Process();
        //    proc.StartInfo.FileName = "cmd.exe";
        //    proc.StartInfo.UseShellExecute = false;
        //    proc.StartInfo.RedirectStandardInput = true;
        //    proc.StartInfo.RedirectStandardOutput = true;
        //    proc.StartInfo.RedirectStandardError = true;
        //    proc.StartInfo.CreateNoWindow = true;
        //    proc.Start();

        //    //Dos命令格式："net use " + ServerName + "  /User:" + UserName + "  " + Pwd + "  /PERSISTENT:YES";
        //    //Xsj:先移除原有的連接
        //    string dosLine = @" net use " + ServerName + @"\ResponseFile   /del /y";
        //    proc.StandardInput.WriteLine(dosLine);
        //    proc.StandardInput.WriteLine("exit");
        //    string errormsg = proc.StandardError.ReadToEnd();
        //    proc.StandardError.Close();
        //    while (!proc.HasExited)
        //    {
        //        proc.WaitForExit(500);
        //    }
        //    proc.Close();
        //    proc.Dispose();

        //}

        /////// <summary>
        /////// Xsj:當前Lot_Id映射到Web系統的目錄路徑
        /////// 1.IQCFlag路徑:\\Ip\\ItemDescription+StoreInDate\
        /////// </summary>
        ////private string WebBaseDirectory
        ////{
        ////    get
        ////    {
        ////        if (this._webBaseDirectory == null)
        ////        {
        ////            PH.FabricInspection.BO.SignOperator signOperatro = new PH.FabricInspection.BO.SignOperator();
        ////            string itemDesc = this.FISPartDefect.Fabric_Insp_Header.Item_Desc;
        ////            //Xsj:處理空格
        ////            itemDesc = ReplaceWhiteplace(itemDesc);
        ////            string storeInDate = this.FISPartDefect.Fabric_Insp_Header.Stock_In_Date;
        ////            itemDesc = signOperatro.ReplaceSign(itemDesc) + " " + storeInDate;
        ////            string supplierCode = this.FISPartDefect.Fabric_Insp_Header.Supplier_Code;

        ////            if (itemDesc.StartsWith(@"\\"))
        ////            {
        ////                this._webBaseDirectory = this.WebSiteIp + @"\ResponseFile\" + supplierCode + @"\" + itemDesc;
        ////            }
        ////            else
        ////            {
        ////                this._webBaseDirectory = @"\\" + this.WebSiteIp + @"\ResponseFile\" + supplierCode + @"\" + itemDesc;
        ////            }
        ////        }
        ////        return this._webBaseDirectory;
        ////    }
        ////}
        ////private string _webBaseDirectory;

        ///// <summary>
        ///// Xsj:回復文件的公享根目錄:IP\ResponseFile\
        ///// </summary>
        //public string SupplierResponseFileDirectory
        //{
        //    get
        //    {
        //        if (_supplierReponseFilePath == null)
        //        {
        //            if (this.WebSiteIp != null)
        //            {
        //                if (this.WebSiteIp.StartsWith(@"\\"))
        //                {
        //                    this._supplierReponseFilePath = this.WebSiteIp + @"\ResponseFile\" + this.FISHeader.Supplier_Code + @"\";
        //                }
        //                else
        //                {
        //                    this._supplierReponseFilePath = @"\\" + this.WebSiteIp + @"\ResponseFile\" + this.FISHeader.Supplier_Code + @"\";
        //                }
        //            }
        //        }
        //        return this._supplierReponseFilePath;
        //    }
        //}
        //private string _supplierReponseFilePath = null;

        ///// <summary>
        ///// Xsj:當前Item+Stock_In_Date的根目錄
        ///// </summary>
        //public string ItemStockInDateRootDirectory
        //{
        //    get
        //    {
        //        if (this.SupplierResponseFileDirectory != null)
        //        {
        //            this._itemStockInDateRootDirectory = this.SupplierResponseFileDirectory + this.FISHeader.Item_No + "_" + this.FISHeader.Stock_In_Date + @"\";
        //        }
        //        return this._itemStockInDateRootDirectory;
        //    }
        //}
        //private string _itemStockInDateRootDirectory = null;

        ///// <summary>
        ///// Xsj:當前Lot_ID對應的的Batch目錄
        ///// </summary>
        //public string ItemBatchDirectory
        //{
        //    get
        //    {
        //        if (this.ItemStockInDateRootDirectory != null)
        //        {
        //            this._itemBatchDirectory = this.ItemStockInDateRootDirectory + @"IQCPhotos\" + this.FISHeader.Supplich_Batch + @"\";
        //        }
        //        return this._itemBatchDirectory;
        //    }
        //}
        //private string _itemBatchDirectory = null;

        ///// <summary>
        ///// Xsj:當前Lot_ID對應的的Roll_No目錄
        ///// </summary>
        //public string ItemRollNoDirectory
        //{
        //    get
        //    {
        //        this._itemRollNoDirectory = this.ItemBatchDirectory + this.FISHeader.Roll_No + @"\";
        //        return this._itemRollNoDirectory;
        //    }
        //}
        //private string _itemRollNoDirectory = null;




        ///// <summary>
        ///// Xsj:獲取當前Lot_Id圖片對應WebSite上的文件夾
        ///// 結建邏輯：
        ///// 1.如果存在Batch No和Roll No都存在:IQCFlag路徑\Batch No+Roll No
        ///// 2.如果Batch No或Roll No不存在:IQCFlag路徑\Batch No或Roll No+I.D.No
        ///// </summary>
        //public string CurrPhotoDirectoryAtWebSite
        //{
        //    get
        //    {
        //        if (this._currPhotoDirecoryAtWebSite == null)
        //        {
        //            //string batchNo = this.FISPartDefect.Fabric_Insp_Header.Supplich_Batch;
        //            //string rollNo = this.FISPartDefect.Fabric_Insp_Header.Roll_No; 
        //            //string photoDirectory = "";
        //            //if (string.IsNullOrEmpty(batchNo) || string.IsNullOrEmpty(rollNo))
        //            //{
        //            //    photoDirectory = (batchNo == null ? "" : batchNo) + (rollNo == null ? "" : rollNo) + " " + this.FISPartDefect.Fabric_Insp_Header.Lot_Id;
        //            //}
        //            //else
        //            //{
        //            //    photoDirectory = batchNo + " " + rollNo;
        //            //}
        //            //this._currPhotoDirecoryAtWebSite = this.WebBaseDirectory + @"\IQCPhotos\" + photoDirectory;

        //            this._currPhotoDirecoryAtWebSite = this.ItemRollNoDirectory;


        //        }
        //        return this._currPhotoDirecoryAtWebSite;
        //    }
        //}
        //private string _currPhotoDirecoryAtWebSite;

        ///// <summary>
        ///// Xsj:獲取當前Lot_Id報表對應WebSite上的文件夾
        ///// </summary>
        //public string CurrReportDirectoryAtWebSite
        //{
        //    get
        //    {
        //        if (this._currReportDirectoryAtWebSite == null)
        //        {
        //            this._currReportDirectoryAtWebSite = this.ItemStockInDateRootDirectory + @"IQCReports";
        //        }
        //        return this._currReportDirectoryAtWebSite;
        //    }
        //}
        //private string _currReportDirectoryAtWebSite;


        #endregion


        //Xsj:圖片放置區域可用寬度
        private int _availWidth
        {
            get
            {
                return this.panelShow.Width - (this.vScrollBar.Visible ? this.vScrollBar.Width : 0);
            }
        }

        //Xsj:圖片放置區域可用高度
        private int _availHeight
        {
            get
            {
                return this.panelShow.Height - (this.hScrollBar.Visible ? this.hScrollBar.Height : 0);
            }
        }

        // 有效尺寸 
        private Size _availSize
        {
            get
            {
                return new Size(this._availWidth, this._availHeight);
            }
        }


        //Xsj:圖片舊的Size
        public Size OldSizeOfImg = new Size();

        //Xsj:舊的窗體Size
        public Size OldSizeOfPanelShow = new Size();

        //Xsj:窗體寬度變化百分比
        private decimal FormWidthChangePercent
        {
            get
            {
                return Convert.ToDecimal(this.panelShow.Width - this.OldSizeOfPanelShow.Width) / (this.OldSizeOfPanelShow.Width == 0 ? 1 : this.OldSizeOfPanelShow.Width);
            }
        }

        //Xsj:窗體髙度變化百分比
        private decimal FormHeightChangePercent
        {
            get
            {
                return Convert.ToDecimal(this.panelShow.Height - this.OldSizeOfPanelShow.Height) / (this.OldSizeOfPanelShow.Height == 0 ? 1 : this.OldSizeOfPanelShow.Height);
            }
        }

        //Xsj:是否允許用鼠標移動圖片
        private bool isAllowMoveImg = false;

        //Xsj:是否允許用截取圖片
        private bool IsAllowCutImg = false;


        //Xsj：鼠標記錄，用於截取圖片
        private Point _cutFromPoint = new Point();
        private Point _cutEndPoint = new Point();
        //Xsj：鼠標記錄，用於移動圖片
        private Point _moveFromPoint = new Point();
        private Point _moveEndPoint = new Point();

        //Xsj:是否在移動/截取圖片情況下移動鼠標
        private bool isMouseMovimg = false;


        private Img MyImg = new Img();

        #endregion 屬性

        #region 方法

        ////Xsj:將字符串中的多個連繼空格替換成一個空格
        //private string ReplaceWhiteplace(string Txt)
        //{
        //    string txt = Txt;
        //    txt = txt.Trim();
        //    string[] ary = txt.Split(' ');
        //    string newTxt = "";
        //    string nextTxt = "";
        //    foreach (string item in ary)
        //    {
        //        nextTxt = (item == "" ? " " : item);
        //        if (nextTxt == " ")
        //        {
        //            if (newTxt.EndsWith(" "))
        //            {
        //                continue;
        //            }
        //        }
        //        newTxt += nextTxt;
        //    }
        //    return newTxt;
        //}

        // Xsj:構造函數
        public FrmImageViewer()
        {
            InitializeComponent();
            this.picEdit_Show.AutoSizeInLayoutControl = true;
        }

        //Xsj：窗體加載
        private void ImageViewer_Load(object sender, EventArgs e)
        {

            this.WebManager.FISHeader = this.FISPartDefect.Fabric_Insp_Header;

            this.panelShow.Width = Convert.ToInt32(this.ClientSize.Width * 0.7);
            this.panelSmall.Width = this.ClientSize.Width - this.panelShow.Width;

            this.vScrollBar.Visible = false;
            this.hScrollBar.Visible = false;
            this.picEdit_Show.Left = 0;
            this.picEdit_Show.Top = 0;
            this.picEdit_Show.Width = this._availWidth;
            this.picEdit_Show.Height = this._availHeight;

            this.OldSizeOfImg = this.picEdit_Show.Size;
            this.OldSizeOfPanelShow = this.panelShow.Size;
            this.picEdit_Show.MouseWheel += new MouseEventHandler(picEdit_Show_MouseWheel);

            if (this._img == null)
            {
                this.panelTool.Enabled = false;
            }
            else
            {
                InitCutPhoto();
            }

            this.btnCut.Enabled = this.IsEditing;
        }

        // Xsj:初始化
        private void InitCutPhoto()
        {
            this.panelTool.Enabled = false;
            this.Cursor = Cursors.WaitCursor;
            this.picEdit_Show.EditValue = this._img;
            MyImg.CurrImg = this._img;
            MyImg.CurrPictureEdit = this.picEdit_Show;
            MyImg.DisplayRectangle = this._availSize;
            try
            {
                LoadAttachPhoto();
                ToolBtnManager();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), "失敗提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            finally
            {
                this.Cursor = Cursors.Default;
                this.panelTool.Enabled = true;
            }

            this.lblImage.Text = GetPhotoName();
        }

        private void LoadAttachPhoto()
        {
            this.xtraScrollableCtrl_CutPhoto.Controls.Clear();
            System.GC.Collect();
            LoadSmallPhoto();
            LoadCutPhotos();
        }

        // Xsj:加載截圖
        private void LoadSmallPhoto()
        {
            string[] extendNames = new string[] { ".JPG", ".JPEG", ".BMP", ".PNG" };
            //string photoDirect = this.WebManager.ItemBatchDirectory;
            string photoDirect = this.WebManager.CurrPhotoDirectoryAtWebSite;
            string imgName = this._imgPath.Substring(this._imgPath.LastIndexOf(@"\") + 1, this._imgPath.LastIndexOf(@".") - this._imgPath.LastIndexOf(@"\") - 1);
            if (System.IO.Directory.Exists(photoDirect))
            {
                System.IO.FileInfo[] fileInfos = new System.IO.DirectoryInfo(photoDirect).GetFiles().Where(p => p.Name.IndexOf(imgName + "_Small") != -1).OrderBy(p => p.Name).ToArray();
                foreach (System.IO.FileInfo item in fileInfos)
                {
                    if (extendNames.Contains(item.Extension.ToUpper()) && item.Name.IndexOf(imgName) != -1 && item.Name.IndexOf("_Small.") != -1)
                    {
                        //顯示截圖
                        CutImgShowCtrl cutShowCtrl = new CutImgShowCtrl();
                        cutShowCtrl.ShortCutPhotoShow = new CutImgShowCtrl.DelCutPhotoDelegate(ShortCutShowCtrl);
                        if (this.xtraScrollableCtrl_CutPhoto.Controls.Count > 0)
                        {
                            CutImgShowCtrl lastCutShowCtrl = this.xtraScrollableCtrl_CutPhoto.Controls[this.xtraScrollableCtrl_CutPhoto.Controls.Count - 1] as CutImgShowCtrl;
                            cutShowCtrl.Top = lastCutShowCtrl.Top + lastCutShowCtrl.Height + 3;
                        }
                        else
                        {
                            cutShowCtrl.Top = 0;
                        }
                        cutShowCtrl.CutPhotoFilePath = item.FullName;
                        cutShowCtrl.CurrFrmImgViewer = this;
                        this.xtraScrollableCtrl_CutPhoto.Controls.Add(cutShowCtrl);
                    }
                }
            }
        }

        // Xsj:加載截圖
        private void LoadCutPhotos()
        {
            string[] extendNames = new string[] { ".JPG", ".JPEG", ".BMP", ".PNG" };
            //string photoDirect = this._imgPath.Substring(0, this._imgPath.LastIndexOf(@"\"));
            string photoDirect = this.WebManager.CurrPhotoDirectoryAtWebSite;
            string imgName = this._imgPath.Substring(this._imgPath.LastIndexOf(@"\") + 1, this._imgPath.LastIndexOf(@".") - this._imgPath.LastIndexOf(@"\") - 1);
            if (System.IO.Directory.Exists(photoDirect))
            {
                System.IO.FileInfo[] fileInfos = new System.IO.DirectoryInfo(photoDirect).GetFiles().Where(p => p.Name.IndexOf(imgName + "_Small_Cut") != -1).OrderBy(p => p.Name).ToArray();
                foreach (System.IO.FileInfo item in fileInfos)
                {
                    if (extendNames.Contains(item.Extension.ToUpper()) && item.Name.IndexOf(imgName) != -1 && item.Name.IndexOf("_Small_Cut") != -1)
                    {
                        //顯示截圖
                        CutImgShowCtrl cutShowCtrl = new CutImgShowCtrl();
                        cutShowCtrl.ShortCutPhotoShow = new CutImgShowCtrl.DelCutPhotoDelegate(ShortCutShowCtrl);
                        if (this.xtraScrollableCtrl_CutPhoto.Controls.Count > 0)
                        {
                            CutImgShowCtrl lastCutShowCtrl = this.xtraScrollableCtrl_CutPhoto.Controls[this.xtraScrollableCtrl_CutPhoto.Controls.Count - 1] as CutImgShowCtrl;
                            cutShowCtrl.Top = lastCutShowCtrl.Top + lastCutShowCtrl.Height + 3;
                        }
                        else
                        {
                            cutShowCtrl.Top = 0;
                        }
                        cutShowCtrl.CutPhotoFilePath = item.FullName;
                        this.xtraScrollableCtrl_CutPhoto.Controls.Add(cutShowCtrl);
                    }
                }
            }
        }

        //Xsj：窗體的Size變化重新計處圖片顯示區的Size
        private void ImageViewer_Resize(object sender, EventArgs e)
        {
            if (FormWidthChangePercent == -1) return;
            this.picEdit_Show.Width = Convert.ToInt32(this.picEdit_Show.Width * (1M + FormWidthChangePercent));
            this.picEdit_Show.Left = Convert.ToInt32(this.picEdit_Show.Left * (1M + FormWidthChangePercent));
            this.picEdit_Show.Height = Convert.ToInt32(this.picEdit_Show.Height * (1M + FormHeightChangePercent));
            this.picEdit_Show.Top = Convert.ToInt32(this.picEdit_Show.Top * (1M + FormHeightChangePercent));
            this.OldSizeOfPanelShow = this.panelShow.Size;
            this.OldSizeOfImg = this.picEdit_Show.Size;
            this.MyImg.DisplayRectangle = this._availSize;
            MyImg._photoScale = MyImg._picContainerScale = 0;
        }

        // Xsj：獲取圖片名稱
        private string GetPhotoName()
        {
            string result = "";
            if (!string.IsNullOrEmpty(this.ImgPath))
            {
                result = this.ImgPath.Substring(this.ImgPath.LastIndexOf(@"\") + 1);
                result = result.Substring(0, result.IndexOf("."));
            }
            return result;
        }

        //Xsj:滾動鼠標上下移動圖片
        void picEdit_Show_MouseWheel(object sender, MouseEventArgs e)
        {
            if (picEdit_Show.Focused && (this.picEdit_Show.Height - this._availHeight) != 0)
            {
                int val = this.vScrollBar.Value - e.Delta * this.vScrollBar.Maximum / (this.picEdit_Show.Height - this._availHeight);
                if (val > this.vScrollBar.Maximum)
                {
                    this.vScrollBar.Value = this.vScrollBar.Maximum;
                    this.picEdit_Show.Top = -this.vScrollBar.Maximum * (this.picEdit_Show.Height - this._availHeight) / this.vScrollBar.Maximum;
                }
                else if (val < 0)
                {
                    this.vScrollBar.Value = 0;
                    this.picEdit_Show.Top = 0;
                }
                else
                {
                    this.vScrollBar.Value = val;
                    this.picEdit_Show.Top += e.Delta;
                }
            }
        }


        #region 放大/缩小圖片

        //Xsj:放大圖片按鈕點擊
        private void btnZoonIn_Click(object sender, EventArgs e)
        {
            MyImg.ZoonIn();
            ScrollBarManager();
        }

        //Xsj:缩小图片
        private void btnZoonOut_Click(object sender, EventArgs e)
        {
            MyImg.ZoonOut();
            ScrollBarManager();
        }

        //滾動條管理
        private void ScrollBarManager()
        {
            int widthVal = this.picEdit_Show.Width - this._availWidth - this.vScrollBar.Width;
            if (widthVal > 0)
            {
                this.hScrollBar.Maximum = widthVal;
                this.hScrollBar.Visible = true;
                int currVal = Math.Abs(this.picEdit_Show.Left * this.hScrollBar.Maximum / ((this.picEdit_Show.Width - this._availWidth) == 0 ? 1 : (this.picEdit_Show.Width - this._availWidth)));
                this.hScrollBar.Value = currVal > this.hScrollBar.Maximum ? this.hScrollBar.Maximum : currVal;

            }
            else
            {
                this.picEdit_Show.Left = 0;
                this.hScrollBar.Maximum = 0;
                this.hScrollBar.Visible = false;
                this.hScrollBar.Value = 0;
            }



            int Heightval = this.picEdit_Show.Height - _availHeight - this.hScrollBar.Height;
            if (Heightval > 0)
            {
                this.vScrollBar.Maximum = Heightval;
                this.vScrollBar.Visible = true;
                int currVal = Math.Abs(this.picEdit_Show.Top * this.vScrollBar.Maximum / ((this.picEdit_Show.Height - this._availHeight) == 0 ? 1 : (this.picEdit_Show.Height - this._availHeight)));
                this.vScrollBar.Value = currVal > this.vScrollBar.Maximum ? this.vScrollBar.Maximum : currVal;
            }
            else
            {
                this.picEdit_Show.Top = 0;
                this.vScrollBar.Maximum = 0;
                this.vScrollBar.Visible = false;
                this.hScrollBar.Value = 0;
            }
            this.OldSizeOfImg = this.picEdit_Show.Size;
        }



        #endregion 放大/缩小圖片

        #region 滾動圖片

        //Xsj:垂直滚动条滚动
        private void vScrollBar_Scroll(object sender, ScrollEventArgs e)
        {
            this.picEdit_Show.Top = -this.vScrollBar.Value * (this.picEdit_Show.Height - this._availHeight) / this.vScrollBar.Maximum;
        }

        //Xsj:水平滚动条滚动
        private void hScrollBar_Scroll(object sender, ScrollEventArgs e)
        {
            this.picEdit_Show.Left = -this.hScrollBar.Value * (this.picEdit_Show.Width - this._availWidth) / this.hScrollBar.Maximum;
        }

        #endregion 滾動圖片

        #region 鼠标操作圖片

        //Xsj:標識移動圖片
        private void btnMove_Click(object sender, EventArgs e)
        {
            isAllowMoveImg = Convert.ToBoolean(this.btnMove.Tag);
            if (isAllowMoveImg)
            {
                this.IsAllowCutImg = false;
                this.btnCut.Tag = true;
                this.Text = "ImageViewer --- Move";
            }
            else
            {
                this.btnMove.Tag = false;
                this.Text = "ImageViewer";
            }
        }

        //Xsj:標識截取圖片
        private void btnCut_Click(object sender, EventArgs e)
        {
            IsAllowCutImg = Convert.ToBoolean(this.btnCut.Tag);
            if (IsAllowCutImg)
            {
                this.isAllowMoveImg = false;
                this.btnMove.Tag = true;
                this.Text = "ImageViewer --- Cut";
            }
            else
            {
                this.btnCut.Tag = false;
                this.Text = "ImageViewer";
            }
        }

        //Xsj:開始鼠標移動/截取圖片
        private void picEdit_Show_MouseDown(object sender, MouseEventArgs e)
        {
            if (this.isAllowMoveImg) //Xsj：移動圖片
            {
                this.Cursor = Cursors.SizeAll;
                this._moveFromPoint = Cursor.Position;
                this._moveEndPoint = Cursor.Position;
            }
            else if (this.IsAllowCutImg) //Xsj:截取圖片
            {
                this.Cursor = Cursors.Cross;
                this._cutFromPoint = e.Location;
                this._cutEndPoint = e.Location;
            }

            isMouseMovimg = true;
        }

        //Xsj:結束鼠標移動/截取圖片
        private void picEdit_Show_MouseUp(object sender, MouseEventArgs e)
        {
            if (this.IsAllowCutImg && this.isMouseMovimg)
            {
                if (this._cutEndPoint != this._cutFromPoint)
                {
                    CutImg();
                }
            }
            this.Cursor = Cursors.Default;
            isMouseMovimg = false;
        }

        //Xsj:結束鼠標移動圖片
        private void picEdit_Show_MouseMove(object sender, MouseEventArgs e)
        {
            this.lble.Text = string.Format("X:{0} Y:{1}", e.X, e.Y);

            if (isMouseMovimg)
            {

                this._cutEndPoint = e.Location;
                this._moveEndPoint = Cursor.Position;

                System.Threading.Thread.Sleep(100);
                this.picEdit_Show.Refresh();

                if (this.isAllowMoveImg && this._moveFromPoint != this._moveEndPoint)
                {
                    ImgMove();
                    this._moveFromPoint = this._moveEndPoint;
                }
                else if (this.IsAllowCutImg && this._cutEndPoint != this._cutFromPoint)
                {
                    //Xsj:繪制表示截取圖片區域的矩形長寬
                    int imgWidth = Math.Abs(this._cutEndPoint.X - this._cutFromPoint.X);
                    int imgHeight = Math.Abs(this._cutEndPoint.Y - this._cutFromPoint.Y);
                    //Xsj:繪制表示截取圖片區域的起點
                    Point pLeftTop = new Point();
                    pLeftTop.X = Math.Min(this._cutEndPoint.X, this._cutFromPoint.X);
                    pLeftTop.Y = Math.Min(this._cutEndPoint.Y, this._cutFromPoint.Y);
                    //Xsj:繪制表示截取圖片區域
                    System.Drawing.Graphics g = System.Drawing.Graphics.FromHwnd(this.picEdit_Show.Handle);
                    Pen currPen = new Pen(this.btnColor.BackColor);
                    g.DrawRectangle(currPen, new Rectangle(pLeftTop, new Size(imgWidth, imgHeight)));
                    g.Dispose();
                }
            }
        }

        //Xsj:移動圖片
        public void ImgMove()
        {
            MyImg.ImgMove(this._moveFromPoint, this._moveEndPoint);
            ScrollBarManager();
        }

        //Xsj:截取圖片 
        private void CutImg()
        {
            CutImgViewer cutImgeViewer = new CutImgViewer();
            //顯示圖片
            cutImgeViewer.CurrCutImg = MyImg.CutImg(this._cutEndPoint, this._cutFromPoint);
            if (DialogResult.OK == cutImgeViewer.ShowDialog())
            {
                try
                {
                    Cursor = Cursors.WaitCursor;
                    //Xsj:保存截圖到Web系統
                    SaveCutImg(cutImgeViewer);
                }
                catch (Exception ex)
                {
                }
                finally
                {
                    Cursor = Cursors.Default;
                }
            }
        }

        private int smallLevel = 5;

        /// <summary>
        /// Xsj:保存截圖
        /// </summary>
        /// <param name="CutImgeViewer"></param>
        private void SaveCutImg(CutImgViewer CutImgeViewer)
        {
            try
            {
                //生成截圖的名稱
                string cutPhotoPath;
                int ctrlsCount = this.xtraScrollableCtrl_CutPhoto.Controls.Count;
                CutImgShowCtrl lastCutImgShowCtrl = null;
                if (ctrlsCount > 0)
                {
                    lastCutImgShowCtrl = this.xtraScrollableCtrl_CutPhoto.Controls[ctrlsCount - 1] as CutImgShowCtrl;
                }
                if (lastCutImgShowCtrl != null)
                {
                    cutPhotoPath = lastCutImgShowCtrl.CutPhotoFilePath;
                }
                else
                {
                    cutPhotoPath = this._imgPath;
                }
                cutPhotoPath = this.WebManager.ItemRollNoDirectory + GetCutPhotoName(cutPhotoPath);

                if (CutImgeViewer.CurrCutImg == null) return;


                #region
                //Xsj2012-04-24:將數據寫入Web系統的數據表中
                string imgName = this._imgPath.Substring(this._imgPath.LastIndexOf(@"\") + 1, this._imgPath.LastIndexOf(@".") - this._imgPath.LastIndexOf(@"\") - 1);
                string extendName = this._imgPath.Substring(this._imgPath.LastIndexOf(@"."));
                imgName += "_Small" + extendName;
                string remark = "第[" + this.FISPartDefect.Detect_Turn_No.ToString() + "]米,因[" + this.FISPartDefect.Defect_NameName + "]被扣" + (this.FISPartDefect.Defect_Deduce_Points ?? 0).ToString() + "分";
                this.WebManager.CreateResponseFlagInfoWeb();
                this.WebManager.CreateFileRemarkWeb(imgName, extendName, remark, true, 0);
                this.WebManager.CreateWebSiteDirec();
                #endregion



                //保存載圖片到硬盤
                if (!System.IO.Directory.Exists(this.WebManager.ItemStockInDateRootDirectory))
                {
                    System.IO.Directory.CreateDirectory(this.WebManager.ItemStockInDateRootDirectory);
                    //Xsj:創建報表文件夾
                    if (!System.IO.Directory.Exists(this.WebManager.CurrReportDirectoryAtWebSite))
                    {
                        System.IO.Directory.CreateDirectory(this.WebManager.CurrReportDirectoryAtWebSite);
                    }
                }

                //Xsj:產生縮略圖
                SaveSmallPhoto();

                //Xsj:保存截圖 
                CutImgeViewer.CurrCutImg.GetThumbnailImage(CutImgeViewer.CurrCutImg.Width / smallLevel, CutImgeViewer.CurrCutImg.Height / smallLevel, null, IntPtr.Zero).Save(cutPhotoPath);
                CutImgeViewer.CurrCutImg = null;
                CutImgeViewer.Close();
                CutImgeViewer.Dispose();

                //顯示截圖 
                ShowCutImgShowCtrl(cutPhotoPath);
            }
            catch (Exception ex)
            {
                MessageBox.Show("系統在[FrmImageViewer.SaveCutImg()]中產生錯誤，保存截圖失敗!錯誤信息:\r\n" + ex.Message.ToString(), "失敗提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

        }

        private void ShowCutImgShowCtrl(string PhotoPath)
        {
            //顯示截圖
            CutImgShowCtrl cutShowCtrl = new CutImgShowCtrl();
            cutShowCtrl.ShortCutPhotoShow = new CutImgShowCtrl.DelCutPhotoDelegate(ShortCutShowCtrl);
            if (this.xtraScrollableCtrl_CutPhoto.Controls.Count > 0)
            {
                CutImgShowCtrl lastCutShowCtrl = this.xtraScrollableCtrl_CutPhoto.Controls[this.xtraScrollableCtrl_CutPhoto.Controls.Count - 1] as CutImgShowCtrl;
                cutShowCtrl.Top = lastCutShowCtrl.Top + lastCutShowCtrl.Height + 3;
            }
            else
            {
                cutShowCtrl.Top = 0;
            }
            cutShowCtrl.CutPhotoFilePath = PhotoPath;
            cutShowCtrl.CurrFrmImgViewer = this;
            this.xtraScrollableCtrl_CutPhoto.Controls.Add(cutShowCtrl);
        }


        //Xsj:產生縮略圖
        private void SaveSmallPhoto()
        {
            try
            {
                string smallPhotoPath = GetSmallPhotoPath();
                if (!System.IO.File.Exists(smallPhotoPath))
                {
                    //保存載圖片到硬盤
                    if (!System.IO.Directory.Exists(this.WebManager.CurrPhotoDirectoryAtWebSite))
                    {
                        System.IO.Directory.CreateDirectory(this.WebManager.CurrPhotoDirectoryAtWebSite);
                        //Xsj:創建報表文件夾
                        if (!System.IO.Directory.Exists(this.WebManager.CurrReportDirectoryAtWebSite))
                        {
                            System.IO.Directory.CreateDirectory(this.WebManager.CurrReportDirectoryAtWebSite);
                        }
                    }
                    //Xsj:產生縮小10倍的Small圖
                    this._img.GetThumbnailImage(this._img.Width / smallLevel, this._img.Height / smallLevel, null, IntPtr.Zero).Save(smallPhotoPath);
                    ShowCutImgShowCtrl(smallPhotoPath);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("系統在[FrmImageViewer.SaveSmallPhoto()]中產生錯誤，保存當前圖片縮略圖失敗!錯誤信息:\r\n" + ex.Message.ToString(), "失敗提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        // Xsj:重新排序截圖 
        private void ShortCutShowCtrl(CutImgShowCtrl val)
        {
            string cutPhotoFilePath = val.CutPhotoFilePath;
            this.xtraScrollableCtrl_CutPhoto.Controls.Remove(val);

            CutImgShowCtrl cutShowCtrl = new CutImgShowCtrl();
            int i = 0;
            foreach (CutImgShowCtrl item in this.xtraScrollableCtrl_CutPhoto.Controls)
            {
                if (i == 0)
                {
                    if (this.xtraScrollableCtrl_CutPhoto.VerticalScroll.Visible)
                    {
                        item.Top = -this.xtraScrollableCtrl_CutPhoto.VerticalScroll.Value;
                    }
                    else
                    {
                        item.Top = 0;
                    }
                    i = 1;
                }
                else
                {
                    item.Top = cutShowCtrl.Top + cutShowCtrl.Height + 3;
                }
                cutShowCtrl = item;
            }
        }

        // Xsj:獲取縮略圖的路徑
        private string GetSmallPhotoPath()
        {
            string OriginPhotoName = this.ImgPath;
            string pathII = OriginPhotoName.Substring(OriginPhotoName.LastIndexOf(@"\") + 1);
            string pathIII = "";

            pathIII = pathII.Substring(0, pathII.LastIndexOf("."));
            pathIII += "_Small.jpg";

            string smallImgPath = this.WebManager.CurrPhotoDirectoryAtWebSite;
            if (smallImgPath != null && smallImgPath.Trim().EndsWith(@"\"))
            {
                smallImgPath += pathIII;
            }
            else
            {
                smallImgPath = smallImgPath + @"\" + pathIII;
            }
            return smallImgPath;
        }

        // Xsj:獲取截圖名稱
        private string GetCutPhotoName(string LastCutPhotoName)
        {
            string result = "";
            //string pathI = LastCutPhotoName.Substring(0, LastCutPhotoName.LastIndexOf(@"\") + 1);
            string pathII = LastCutPhotoName.Substring(LastCutPhotoName.LastIndexOf(@"\") + 1);
            string pathIII = "";
            if (pathII.IndexOf("_Small_Cut") == -1)
            {
                pathIII = pathII.Substring(0, pathII.LastIndexOf("."));
                //pathI += pathIII + "_Cut1001.jpg";
                //result = pathI;

                pathIII += "_Small_Cut1001.jpg";
                result = pathIII;
            }
            else
            {
                pathIII = pathII.Substring(0, pathII.LastIndexOf("_Small_Cut"));
                string PathIV = pathII.Substring(pathII.LastIndexOf("_Small_Cut") + 10, (pathII.LastIndexOf(".") - pathII.LastIndexOf("_Small_Cut") - 10));
                //pathI += pathIII + "_Cut" + (Convert.ToInt32(PathIV) + 1).ToString() + ".jpg";
                //result = pathI;
                pathIII += "_Small_Cut" + (Convert.ToInt32(PathIV) + 1).ToString() + ".jpg";
                result = pathIII;
            }
            return result;
        }

        #endregion 鼠标移動圖片


        //Xsj：圖片適應顯示區大小
        private void btnFit_Click(object sender, EventArgs e)
        {
            BestSize();
        }

        private void BestSize()
        {
            this.hScrollBar.Visible = false;
            this.vScrollBar.Visible = false;
            this.picEdit_Show.Width = this._availWidth;
            this.picEdit_Show.Height = this._availHeight;
            this.picEdit_Show.Location = new Point(0, 0);

            this.OldSizeOfImg = this.picEdit_Show.Size;
        }

        //Xsj:顯示圖片的原始尺寸
        private void btnNormal_Click(object sender, EventArgs e)
        {
            ShowNormalSize();
        }

        private void ShowNormalSize()
        {
            this.picEdit_Show.Width = this._img.Width;
            this.picEdit_Show.Height = this._img.Height;
            this.picEdit_Show.Location = new Point(0, 0);

            //Xsj:寬度  
            if (this.picEdit_Show.Width > _availWidth)
            {
                this.OldSizeOfImg.Width = this._availWidth;
                int val = this.picEdit_Show.Width - this.OldSizeOfImg.Width;
                this.hScrollBar.Maximum = val;
                this.hScrollBar.Visible = true;
            }

            //Xsj:髙度 
            if (this.picEdit_Show.Height > _availHeight)
            {
                this.OldSizeOfImg.Height = this._availHeight;
                int val = this.picEdit_Show.Height - this.OldSizeOfImg.Height;
                this.vScrollBar.Maximum = val;
                this.vScrollBar.Visible = true;
            }

            this.OldSizeOfImg = this.picEdit_Show.Size;
        }


        //Xsj:壓縮圖片
        private void btnShapHandler_Click(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                CompressShapeForm compShapForm = new CompressShapeForm();
                compShapForm.OrgImg = this._img;
                this.Text = "ImageViewer --- Compress";
                compShapForm.ShowDialog();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        #region 導航按鈕
        //Xsj:First
        private void btn_First_Click(object sender, EventArgs e)
        {
            this.btn_First.Enabled = false;
            this.ImgPath = this.FirstDefectPhotoPath;
            ResetFISPartDefect();
            InitCutPhoto();
        }
        //Xsj:Last
        private void btn_Last_Click(object sender, EventArgs e)
        {
            this.btn_Last.Enabled = false;
            this.ImgPath = this.LastDefectPhotoPath;
            ResetFISPartDefect();
            InitCutPhoto();
        }
        //Xsj:Pre
        private void btn_Previous_Click(object sender, EventArgs e)
        {
            this.btn_Previous.Enabled = false;
            this.ImgPath = this.PreDefectPhotoPath;
            ResetFISPartDefect();
            InitCutPhoto();
        }
        //Xsj:Next
        private void btn_Next_Click(object sender, EventArgs e)
        {
            this.btn_Next.Enabled = false;
            this.ImgPath = this.NextDefectPhotoPath;
            ResetFISPartDefect();
            InitCutPhoto();
        }

        private void ResetFISPartDefect()
        {
            string ImgPath = this.ImgPath;
            if (string.IsNullOrEmpty(ImgPath))
            {
                return;
            }

            string turnNo = ImgPath.Substring(ImgPath.LastIndexOf(@" "));
            if (turnNo.Length < 5)
            {
                return;
            }
            turnNo = turnNo.Substring(2, 3);
            int turnNoVal = -1;
            if (!int.TryParse(turnNo, out turnNoVal))
            {
                return;
            }

            PH.FabricInspection.BO.Fabric_Insp_PartDefect partDefect = this.FISHeader.Fabric_Insp_PartDefects.Where(p => p.Detect_Turn_No == turnNoVal).FirstOrDefault();
            if (partDefect != null)
            {
                this.FISPartDefect = partDefect;
            }
        }

        private void ToolBtnManager()
        {
            this.btn_First.Enabled = (!(this.ImgPath == this.FirstDefectPhotoPath) && this.DefectPhotoPathList != null && this.DefectPhotoPathList.Count > 0);
            this.btn_Last.Enabled = (!(this.ImgPath == this.LastDefectPhotoPath) && this.DefectPhotoPathList != null && this.DefectPhotoPathList.Count > 0);
            this.btn_Next.Enabled = (this.NextDefectPhotoPath != null);
            this.btn_Previous.Enabled = (this.PreDefectPhotoPath != null);
        }

        #endregion 導航按鈕

        private void btnColor_Click(object sender, EventArgs e)
        {
            ColorDialog colorDialog = new ColorDialog();
            colorDialog.ShowDialog();
            this.btnColor.BackColor = colorDialog.Color;
        }

        #endregion 方法

        private void FrmImageViewer_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.WebManager.CloseNetConnect();
        }




    }
}
