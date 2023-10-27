using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class CutImgShowCtrl : UserControl
    {
        public FrmImageViewer CurrFrmImgViewer
        {
            get;
            set;
        }

        public string CutPhotoFilePath
        {
            get;
            set;
        }

        private Image CutPhotoImg
        {
            get
            {
                if (_cutPhotoImg == null)
                {
                    _cutPhotoImg = Image.FromFile(this.CutPhotoFilePath);

                }
                return _cutPhotoImg;
            }
        }
        private Image _cutPhotoImg;

        public delegate void DelCutPhotoDelegate(CutImgShowCtrl val);
        public DelCutPhotoDelegate ShortCutPhotoShow
        {
            get;
            set;
        }


        public CutImgShowCtrl()
        {
            InitializeComponent();
        }

        private void CutImgShowCtrl_Load(object sender, EventArgs e)
        {
            this.pictureEdit_PhotoShow.Image = this.CutPhotoImg;
        }

        private void btn_Del_Click(object sender, EventArgs e)
        {
            if (!(this.Parent.Parent.Parent as FrmImageViewer).IsEditing)
            {
                return;
            }

            if (DialogResult.Yes != MessageBox.Show("你確定要刪除當前截圖？", "刪除提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question))
            {
                return;
            }
            try
            {
                if (System.IO.File.Exists(this.CutPhotoFilePath))
                {
                    //Xsj:刪除Small圖之前。先檢查是否已刪除了所有截圖，否則不能刪除Small圖
                    if (this.CutPhotoFilePath.IndexOf("_Small.") != -1)
                    {
                        string directory = this.CutPhotoFilePath.Substring(0, this.CutPhotoFilePath.LastIndexOf(@"\"));
                        string photoPath = this.CutPhotoFilePath;
                        string photoName = this.CutPhotoFilePath.Substring(photoPath.LastIndexOf(@"\") + 1, photoPath.LastIndexOf(".") - photoPath.LastIndexOf(@"\") - 1) + "_Cut";
                        int fileInfoCount = new System.IO.DirectoryInfo(directory).GetFiles().Where(p => p.Name.IndexOf(photoName) != -1).Count();
                        if (fileInfoCount > 0)
                        {
                            MessageBox.Show("刪除當前圖片之前，請先刪除所有截圖!", "禁止刪除提示");
                            return;
                        }

                        //Xsj20120906:刪除圖片時同時刪除圖片的備注信息
                        PH.FabricInspectPicTransferBO.FabricInspectionPhotoTransferDataContext dc = new PH.FabricInspectPicTransferBO.DbConnectInfo().CurrDataContext;
                        string imgName = this.CurrFrmImgViewer.ImgPath.Substring(this.CurrFrmImgViewer.ImgPath.LastIndexOf(@"\") + 1, this.CurrFrmImgViewer.ImgPath.LastIndexOf(@".") - this.CurrFrmImgViewer.ImgPath.LastIndexOf(@"\") - 1);
                        string extendName = this.CurrFrmImgViewer.ImgPath.Substring(this.CurrFrmImgViewer.ImgPath.LastIndexOf(@"."));
                        imgName += "_Small" + extendName;
                        PH.FabricInspectPicTransferBO.FileRemarkWeb fileWebRemark = dc.FileRemarkWebs.Where(p => p.SupplierName == this.CurrFrmImgViewer.FISHeader.Supplier_Code &&
                                                                                                              p.IQCFlag == this.CurrFrmImgViewer.FISHeader.Item_No + "_" + this.CurrFrmImgViewer.FISHeader.Stock_In_Date &&
                                                                                                              p.RemarkFlag == 0 && p.FileName.IndexOf(imgName) != -1).FirstOrDefault();
                        if (fileWebRemark != null)
                        {
                            dc.FileRemarkWebs.DeleteOnSubmit(fileWebRemark);
                        }
                        dc.SubmitChanges();
                    }

                    //Xsj:刪除圖片文件前，先Dispose當前圖片框和窗體，這樣可以解圖片框對圖片文件的獨占訪問。（但可以會引發其它問題，還在觀察中)
                    this.pictureEdit_PhotoShow.Image.Dispose();
                    this.Dispose();
                    //Xsj:強制回收，以免產生圖片被其它進程占用而產生刪除異常的情況
                    System.GC.Collect();
                    System.IO.File.Delete(this.CutPhotoFilePath);
                    if (this.ShortCutPhotoShow != null)
                    {
                        this.ShortCutPhotoShow.Invoke(this);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("刪除圖片失敗，請重嘗試！\r\n" + ex.ToString(), "系統提示");
            }

        }

        private void pictureEdit_PhotoShow_DoubleClick(object sender, EventArgs e)
        {
            CutImgViewer cutImgView = new CutImgViewer();
            cutImgView.IsShowToolBar = false;
            cutImgView.CurrCutImg = this.CutPhotoImg;
            cutImgView.ShowDialog();

        }
    }
}
