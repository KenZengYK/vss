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
using PH.MobileQC.UI.QCExamPlan;

namespace PH.MobileQC.UI.CustQC
{
    public partial class CustQCDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CustQCDetail CurrentCustQCDetail
        {
            get
            {
                return this.BindingSource.Current as CustQCDetail;
            }
        }

        public CustQCDetailDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            //string SqlStr = "select PHDefectCode, DefectChineseName, DefectEnglishName, DefectThaiName from [PH.FabricInspection]..PHQCDefect";
            //this.lpDefectCode.Properties.DataSource = (this.DataContext as MobileQCDataContext).ExecuteDataTable(SqlStr, "dtDefect");
            //this.lpDefectCode.Properties.ValueMember = "PHDefectCode";
            //this.lpDefectCode.Properties.DisplayMember = "PHDefectCode";

            LoadPicture(CurrentCustQCDetail.DefectPicture1URL, this.pictureEdit1);
            LoadPicture(CurrentCustQCDetail.DefectPicture2URL, this.pictureEdit2);

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
            this.BindingSource.EndEdit();

            ProcessPictureModified(Picture1Modified, CurrentCustQCDetail.DefectPicture1URL, Picture1Path, this.pictureEdit1, "DefectPicture1URL");
            ProcessPictureModified(Picture2Modified, CurrentCustQCDetail.DefectPicture2URL, Picture2Path, this.pictureEdit2, "DefectPicture2URL");

            Picture1Modified = false;
            Picture2Modified = false;

            CustQCDetail obj=    this.BindingSource.Current as CustQCDetail;
            if (obj.DefectCode == "") 
            {
                MessageBox.Show("DefectCode不能爲空！");
                return; 
            }
            
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
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQCDetail.DefectPicture1URL = ANewPicturePath; }
                        else { CurrentCustQCDetail.DefectPicture2URL = ANewPicturePath; }
                    }
                }
                else //原來有圖片，修改圖片的情況
                {
                    if (string.IsNullOrEmpty(ANewPicturePath)) //原來有圖片，現在刪除圖片
                    {
                        FileHelper.DeleteFile(ASourceDefectPicture1URL);
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQCDetail.DefectPicture1URL = null; }
                        else { CurrentCustQCDetail.DefectPicture2URL = null; }
                    }
                    else //原來有圖片，修改圖片的情況
                    {
                        FileHelper.DeleteFile(ASourceDefectPicture1URL);
                        if (ADefectPictureURL == "DefectPicture1URL") { CurrentCustQCDetail.DefectPicture1URL = ANewPicturePath; }
                        else { CurrentCustQCDetail.DefectPicture2URL = ANewPicturePath; }
                        APictureEdit.Image.Save(ANewPicturePath);
                    }
                }
            }
        }

        private void lpDefectCode_EditValueChanged(object sender, EventArgs e)
        {
            ControlDefectEdit();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            ControlDefectEdit();
        }

        void ControlDefectEdit()
        {
            this.criticalDefectQtySpinEdit.Enabled = true;
            this.marjorDefectQtySpinEdit.Enabled = true;
            this.minorDefectQtySpinEdit.Enabled = true;

            if (this.bESelectDefectCode.Text.StartsWith("CS")) //包裝疵點只有Critical Defect
            {
                this.marjorDefectQtySpinEdit.EditValue = 0;
                this.minorDefectQtySpinEdit.EditValue = 0;
                this.marjorDefectQtySpinEdit.Enabled = false;
                this.minorDefectQtySpinEdit.Enabled = false;
            }
            else if (this.bESelectDefectCode.Text.StartsWith("MS")) //尺碼檢查只有Marjor和Minor兩種疵點
            {
                this.criticalDefectQtySpinEdit.EditValue = 0;
                this.criticalDefectQtySpinEdit.Enabled = false;
            }
        }

        private void buttonEdit1_EditValueChanged(object sender, EventArgs e)
        {
            ControlDefectEdit();
        }

           private void buttonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (this.IsEditting || this.IsNew)
            {
                SelectDefectCodeForm frmSelectStyle = new SelectDefectCodeForm(this.bESelectDefectCode.Text);
                if (frmSelectStyle.ShowDialog() == DialogResult.OK)
                {

                    this.bESelectDefectCode.Text = frmSelectStyle.PHDefectCode;

                }
            }
        }



    }
}
