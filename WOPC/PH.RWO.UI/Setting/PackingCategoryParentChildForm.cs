using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.RWO.BO;
using PH.RWO.BackEnd;

namespace PH.RWO.UI.Setting
{
    public partial class PackingCategoryParentChildForm : ParentChildForm
    {
        public PackingCategoryParentChildForm()
        {
            InitializeComponent();
        }
        public string ImgPath { get; set; }
        //private List<BF> bblst;
        protected override void SaveCurrent()
        {
            //if (!string.IsNullOrEmpty(this.ImgPath)) (this.BindingSource.Current as CustomerBrandCategory).Img = this.ImgPath;

            base.SaveCurrent();
        }
        public override void DataBind()
        {
            this.packingCupListForm1.BindingSource.DataSource = (this.BindingSource.Current as CustomerBrandCategory).CustomerCups;
            this.packingLabelListForm1.BindingSource.DataSource = (this.BindingSource.Current as CustomerBrandCategory).CustomerLabelings;
            this.packingMethodListForm1.BindingSource.DataSource = (this.BindingSource.Current as CustomerBrandCategory).CustomerPackings;

            base.DataBind();
            //P1.Image = (this.BindingSource.Current as CustomerBrandCategory).Img != null ? DataHelper.ByteArrayToImage((this.BindingSource.Current as CustomerBrandCategory).Img.ToArray()) : null;
            this.packingMethodListForm1.AllowGridEdit = true;
            this.packingLabelListForm1.AllowGridEdit = true;
            this.packingCupListForm1.AllowGridEdit = true;

            PH.RWO.BO.DictionaryList list = new DictionaryList();
            var aa = list.GetDataDictionary("PH.PackingMethod");
            packMethodComboBoxEdit.Properties.Items.Clear();
            foreach (var item in aa)
            {
                packMethodComboBoxEdit.Properties.Items.Add(item.DataCode);
            }

            var bb = list.GetDataDictionary("PH.Category");
            categoryComboBoxEdit.Properties.Items.Clear();
            foreach (var item in bb)
            {
                categoryComboBoxEdit.Properties.Items.Add(item.DataName);
            }

        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            imgTextEdit.Properties.ReadOnly = true;
        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty((this.BindingSource.Current as CustomerBrandCategory).Img))
            {
                ShowP1((this.BindingSource.Current as CustomerBrandCategory).Img);
            }
            else
            {
                P1.Image = null;
            }
        }

        private void barBtnRpt_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.CustomerBrandCategory cbc = this.BindingSource.Current as PH.RWO.BO.CustomerBrandCategory;
            if (cbc == null) return;

            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.Packing.JobCustomerRequestReport).FullName;//報表全名
            data.JobName = string.Format("Pacing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3};{4}", cbc.Customer, cbc.CustCode, cbc.Brand, cbc.Category, cbc.GID);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barBtnPositionBMP_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.CustomerBrandCategory cbc = this.BindingSource.Current as PH.RWO.BO.CustomerBrandCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.Packing.JobCustomerLocationReport).FullName;//報表全名
            data.JobName = string.Format("Pacing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3};{4}", cbc.Customer, cbc.CustCode, cbc.Brand, cbc.Category, cbc.GID);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");

        }

        private void barBtnPic_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void uploadPictureToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UploadPicture();
        }
        private void barBtnPic_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            UploadPicture();
        }
        private void UploadPicture()
        {
            OpenFileDialog file = new OpenFileDialog();
            //file.Filter = "PCX|*.PCX";  圖片|*.PCX;*.jpg;*.png;
            file.Filter = "圖片|*.PCX;*.jpg;*.png";

            if (file.ShowDialog() == DialogResult.OK)
            {
                ShowP1(file.FileName);

                CustomerBrandCategory cbc = this.BindingSource.Current as CustomerBrandCategory;
                if (cbc != null) cbc.Img = file.FileName;
            }
        }
        void ShowP1(string FilePath)
        {
            this.ImgPath = FilePath;
            string ext = System.IO.Path.GetExtension(FilePath);
            if (ext.ToUpper() == ".PCX")
            {
                //ImagePcx pcx = new ImagePcx(FilePath);
                //P1.Image = pcx.PcxImage;
                PcxFile pcx = new PcxFile();
                Image image = pcx.Load(FilePath);
                P1.Image = image;
            }
            else
            {
                P1.Image = Image.FromFile(FilePath);
            }
        }
        private void barBtnCopyStyle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.BindingSource.EndEdit();
            CustomerBrandCategory curCategory = this.BindingSource.Current as CustomerBrandCategory;
            StyleForm frm = new StyleForm(curCategory);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                CustomerBrandCategory selectedCategory = frm.SelectedCategory;
                if (selectedCategory == null)
                {
                    return;
                }

                curCategory.FlatOrHalfFold = selectedCategory.FlatOrHalfFold;
                curCategory.Hookandeye = selectedCategory.Hookandeye;
                curCategory.ShoulderStrapAdjustment = selectedCategory.ShoulderStrapAdjustment;
                curCategory.SizeDispatching = selectedCategory.SizeDispatching;
                curCategory.BasicRequisition1 = selectedCategory.BasicRequisition1;
                curCategory.BasicRequisition2 = selectedCategory.BasicRequisition2;
                curCategory.BasicRequisition3 = selectedCategory.BasicRequisition3;
                curCategory.ProwBoard = selectedCategory.ProwBoard;
                curCategory.ExportCtnMeasurement = selectedCategory.ExportCtnMeasurement;
                curCategory.CartonBeltRequisition = selectedCategory.CartonBeltRequisition;
                curCategory.InnerBoxMeasurement = selectedCategory.InnerBoxMeasurement;
                curCategory.Sky_SingleDouble = selectedCategory.Sky_SingleDouble;
                curCategory.Sky_Desc = selectedCategory.Sky_Desc;
                curCategory.Boat_SingleDouble = selectedCategory.Boat_SingleDouble;
                curCategory.Boat_Desc = selectedCategory.Boat_Desc;
                curCategory.SideMark_SingleDouble = selectedCategory.SideMark_SingleDouble;
                curCategory.SideMark_Desc = selectedCategory.SideMark_Desc;
                curCategory.SideMarkPaper_SingleDouble = selectedCategory.SideMarkPaper_SingleDouble;
                curCategory.SideMarkPaper_Desc = selectedCategory.SideMarkPaper_Desc;
                curCategory.InnerBoxMark_SingleDouble = selectedCategory.InnerBoxMark_SingleDouble;
                curCategory.InnerBoxMark_Desc = selectedCategory.InnerBoxMark_Desc;
                curCategory.MarkerA = selectedCategory.MarkerA;
                curCategory.MarkerB = selectedCategory.MarkerB;
                curCategory.MarkerC = selectedCategory.MarkerC;
                curCategory.MarkerD = selectedCategory.MarkerD;
                curCategory.MarkerE = selectedCategory.MarkerE;
                curCategory.BrandA = selectedCategory.BrandA;
                curCategory.BrandB = selectedCategory.BrandB;
                curCategory.BrandC = selectedCategory.BrandC;
                curCategory.BrandD = selectedCategory.BrandD;
                //CurCategory.BrandE = selectedCategory.BrandE;
                curCategory.CustomDecalsA = selectedCategory.CustomDecalsA;
                curCategory.CustomDecalsB = selectedCategory.CustomDecalsB;
                curCategory.CustomDecalsC = selectedCategory.CustomDecalsC;
                curCategory.CustomDecalsD = selectedCategory.CustomDecalsD;
                curCategory.CustomDecalsE = selectedCategory.CustomDecalsE;
                curCategory.CustomDecalsF = selectedCategory.CustomDecalsF;
                curCategory.PlasticBags_Material = selectedCategory.PlasticBags_Material;
                curCategory.PlasticBags_Depth = selectedCategory.PlasticBags_Depth;
                curCategory.PlasticNeedleStyle = selectedCategory.PlasticNeedleStyle;
                curCategory.PlasticNeedleLength = selectedCategory.PlasticNeedleLength;
                curCategory.ClothesHorseStyle = selectedCategory.ClothesHorseStyle;
                curCategory.Img = selectedCategory.Img;
                curCategory.PackReference = selectedCategory.PackReference;
                curCategory.LabelReference = selectedCategory.LabelReference;
                curCategory.PackMethod = selectedCategory.PackMethod;
                //curCategory.StyleDesc = selectedCategory.StyleDesc;

                if (!string.IsNullOrEmpty(curCategory.Img))
                {
                    ShowP1(curCategory.Img);
                }
                else
                {
                    P1.Image = null;
                }

                PH.RWO.BO.RWOSOPCDataContext dc = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
                if (selectedCategory.CustomerPackings == null || selectedCategory.CustomerPackings.Count == 0) return;

                if (curCategory.CustomerCups != null && curCategory.CustomerCups.Count > 0)
                {
                    dc.CustomerCups.DeleteAllOnSubmit(curCategory.CustomerCups);
                    this.packingCupListForm1.BindingSource.Clear();
                    curCategory.CustomerCups.Clear();
                    dc.SubmitChanges();
                }

                if (curCategory.CustomerLabelings != null && curCategory.CustomerLabelings.Count > 0)
                {
                    dc.CustomerLabelings.DeleteAllOnSubmit(curCategory.CustomerLabelings);
                    this.packingLabelListForm1.BindingSource.Clear();
                    curCategory.CustomerLabelings.Clear();
                    dc.SubmitChanges();
                }
                if (curCategory.CustomerPackings != null && curCategory.CustomerPackings.Count > 0)
                {
                    dc.CustomerPackings.DeleteAllOnSubmit(curCategory.CustomerPackings);
                    this.packingMethodListForm1.BindingSource.Clear();
                    curCategory.CustomerPackings.Clear();
                    dc.SubmitChanges();
                }

                //this.packingMethodListForm1.BindingSource.Clear();
                //this.packingLabelListForm1.BindingSource.Clear();
                //this.packingCupListForm1.BindingSource.Clear();
                //int id = 0;
                foreach (CustomerPacking item in selectedCategory.CustomerPackings)
                {
                    object obj = packingMethodListForm1.BindingSource.AddNew();
                    CustomerPacking tt = obj as CustomerPacking;
                    tt.CustomerBrandCategory = curCategory;
                    tt.CurrentDataContext = this.DataContext;
                    tt.CurrentBindingSource = packingMethodListForm1.BindingSource;

                    //CustomerPacking tt = new CustomerPacking();
                    tt.Customer = item.Customer;
                    tt.CustCode = item.CustCode;
                    //tt.Brand = item.Brand;
                    //tt.Category = item.Category;
                    tt.GID = curCategory.GID;
                    tt.ID = item.ID;
                    tt.PackDescCH = item.PackDescCH;
                    tt.PackDescEN = item.PackDescEN;
                    tt.PackDescTH = item.PackDescTH;
                    //this.packingMethodListForm1.BindingSource.Add(tt);
                    curCategory.CustomerPackings.Add(tt);
                }
                this.DataContext.SubmitChanges();

                foreach (CustomerCup item in selectedCategory.CustomerCups)
                {
                    object obj = packingCupListForm1.BindingSource.AddNew();
                    CustomerCup tt = obj as CustomerCup;
                    tt.CustomerBrandCategory = curCategory;
                    tt.CurrentDataContext = this.DataContext;
                    tt.CurrentBindingSource = packingCupListForm1.BindingSource;

                    //CustomerCup tt = new CustomerCup();
                    tt.Customer = item.Customer;
                    tt.CustCode = item.CustCode;
                    tt.GID = curCategory.GID;
                    //tt.Brand = item.Brand;
                    //tt.Category = item.Category;
                    tt.ClrCode = item.ClrCode;
                    tt.Cups = item.Cups;
                    tt.Size = item.Size;
                    tt.Qty = item.Qty;
                    //this.packingCupListForm1.BindingSource.Add(tt);
                    curCategory.CustomerCups.Add(tt);
                }
                this.DataContext.SubmitChanges();
                foreach (CustomerLabeling item in selectedCategory.CustomerLabelings)
                {
                    object obj = packingLabelListForm1.BindingSource.AddNew();
                    CustomerLabeling tt = obj as CustomerLabeling;
                    tt.CustomerBrandCategory = curCategory;
                    tt.CurrentDataContext = this.DataContext;
                    tt.CurrentBindingSource = packingLabelListForm1.BindingSource;

                    //CustomerLabeling tt = new CustomerLabeling();
                    tt.Customer = item.Customer;
                    tt.CustCode = item.CustCode;
                    tt.GID = curCategory.GID;
                    tt.ID = item.ID;
                    tt.LabelDescCH = item.LabelDescCH;
                    tt.LabelDescEN = item.LabelDescEN;
                    tt.LabelDescTH = item.LabelDescTH;
                    //this.packingLabelListForm1.BindingSource.Add(tt);
                    curCategory.CustomerLabelings.Add(tt);
                }
                this.DataContext.SubmitChanges();

                this.packingMethodListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
                this.packingLabelListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
                this.packingCupListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;

                this.packingMethodListForm1.objListGridView.OptionsBehavior.Editable = true;
                this.packingLabelListForm1.objListGridView.OptionsBehavior.Editable = true;
                this.packingCupListForm1.objListGridView.OptionsBehavior.Editable = true;
            }
        }

        protected override void SetToolBarState(PH.Platform.BO.Interface.WorkMode aState)
        {
            base.SetToolBarState(aState);
            this.btnAttach.Enabled = aState == PH.Platform.BO.Interface.WorkMode.Edit;
            this.P1.Properties.ContextMenuStrip = aState == PH.Platform.BO.Interface.WorkMode.Edit ? this.contextMenuStrip1 : null;
        }

        private void xtraTabControl1_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            if (this.IsNew || this.IsEditting)
                this.OnClickEdit();
        }


    }
}
