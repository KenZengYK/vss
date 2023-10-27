using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraEditors;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQC_DetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CustQC_Detail CurrentCustQC_Detail
        {
            get
            {
                return this.BindingSource.Current as CustQC_Detail;
            }
        }

        public CustQC_DetailDetailForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();

            string SqlStr = "select PHDefectCode, DefectChineseName, DefectEnglishName, DefectThaiName from [PH.FabricInspection]..PHQCDefect";
            this.lpDefectCode.Properties.DataSource = (this.DataContext as MobileQCDataContext).ExecuteDataTable(SqlStr, "dtDefect");
            this.lpDefectCode.Properties.ValueMember = "PHDefectCode";
            this.lpDefectCode.Properties.DisplayMember = "PHDefectCode";

            LoadPicture(CurrentCustQC_Detail.DefectPicture1URL, this.pictureEdit1);
            LoadPicture(CurrentCustQC_Detail.DefectPicture2URL, this.pictureEdit2);
        }

        void LoadPicture(string ADefectPictureURL, PictureEdit APiectureEdit)
        {
            if (string.IsNullOrEmpty(ADefectPictureURL)) return;

            try
            {
                FileHelper.ConnectFileServer();
                Image image = Image.FromFile(ADefectPictureURL);
                Image bmp = new Bitmap(image);
                image.Dispose();
                APiectureEdit.Image = bmp;
            }
            catch (Exception ex)
            {
                MessageBox.Show("加載圖片失敗：" + ex.Message);
            }
        }

        protected override void SaveCurrent()
        {
            CurrentCustQC_Detail.DefectType = (this.ListForm as CustQC_DetailListForm).DefectType;

            ProcessPictureModified(Picture1Modified, CurrentCustQC_Detail.DefectPicture1URL, Picture1Path, this.pictureEdit1, "DefectPicture1URL");
            ProcessPictureModified(Picture2Modified, CurrentCustQC_Detail.DefectPicture2URL, Picture2Path, this.pictureEdit2, "DefectPicture2URL");

            Picture1Modified = false;
            Picture2Modified = false;

            base.SaveCurrent();
        }

        bool Picture1Modified = false;
        string Picture1Path = "";
        private void pictureEdit1_Modified(object sender, EventArgs e)
        {
            Picture1Modified = true;
            Picture1Path = this.pictureEdit1.EditValue == null ? "" : FileHelper.GetFileSavePath("CustQCDefect");
        }

        bool Picture2Modified = false;
        string Picture2Path = "";
        private void pictureEdit2_Modified(object sender, EventArgs e)
        {
            Picture2Modified = true;
            Picture2Path = this.pictureEdit2.EditValue == null ? "" : FileHelper.GetFileSavePath("CustQCDefect");
        }

        void ProcessPictureModified(bool APictureModifedFlag, string ASourceDefectPicture1URL, string ANewPicturePath, PictureEdit APictureEdit, string ADefectPictureURL)
        {
            if (APictureModifedFlag)
            {
                //原來沒有圖片，新增圖片的情況
                if (string.IsNullOrEmpty(ASourceDefectPicture1URL))
                {
                    if (!string.IsNullOrEmpty(ANewPicturePath))
                    {
                        APictureEdit.Image.Save(ANewPicturePath);
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQC_Detail.DefectPicture1URL = ANewPicturePath; }
                        else { CurrentCustQC_Detail.DefectPicture2URL = ANewPicturePath; }
                    }
                }
                else //原來有圖片，修改圖片的情況
                {
                    if (string.IsNullOrEmpty(ANewPicturePath)) //原來有圖片，現在刪除圖片
                    {
                        FileHelper.DeleteFile(ASourceDefectPicture1URL);
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQC_Detail.DefectPicture1URL = null; }
                        else { CurrentCustQC_Detail.DefectPicture2URL = null; }
                    }
                    else //原來有圖片，修改圖片的情況
                    {
                        FileHelper.DeleteFile(ASourceDefectPicture1URL);
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQC_Detail.DefectPicture1URL = ANewPicturePath; }
                        else { CurrentCustQC_Detail.DefectPicture2URL = ANewPicturePath; }
                        APictureEdit.Image.Save(ANewPicturePath);
                    }
                }
            }
        }

        private void lpDefectCode_EditValueChanged(object sender, EventArgs e)
        {
            this.lbDefectName.Text = this.lpDefectCode.GetColumnValue("DefectChineseName").ToString();
        }
    }
}
