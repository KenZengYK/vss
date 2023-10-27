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
using DevExpress.XtraBars;

namespace PH.RWO.UI.WO
{
    public partial class PackingWOCategoryParentChildForm : ParentChildForm
    {

        public PackingWOCategoryParentChildForm()
        {
            InitializeComponent();
        }
        public string ImgPath { get; set; }
        protected override void SaveCurrent()
        {
            //(this.BindingSource.Current as WorkOrderCategory).ProductCategory = (this.BindingSource.Current as WorkOrderCategory).WorkOrder.Category;
            //if (!string.IsNullOrEmpty(this.ImgPath)) (this.BindingSource.Current as WorkOrderCategory).Img = this.ImgPath;

            base.SaveCurrent();

        }

        public override void DataBind()
        {
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.packingWOPackMethodListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderCategory).WorkOrderCategoryPackings;
            this.packingWOCupsListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderCategory).WorkOrderCategoryCups;
            this.packingWOLabelingListForm1.BindingSource.DataSource = (this.BindingSource.Current as WorkOrderCategory).WorkOrderCategoryLabelings;
            base.DataBind();

            PH.RWO.BO.DictionaryList list = new DictionaryList();
            var aa = list.GetDataDictionary("PH.PackingMethod");
            packMethodComboBoxEdit.Properties.Items.Clear();
            casingMethodComboBoxEdit.Properties.Items.Clear(); //由David加入 2019-09-09
            foreach (var item in aa)
            {
                packMethodComboBoxEdit.Properties.Items.Add(item.DataCode);
                casingMethodComboBoxEdit.Properties.Items.Add(item.DataCode); //由David加入 2019-09-09
            }

            var bb = list.GetDataDictionary("PH.Category");
            categoryComboBoxEdit.Properties.Items.Clear();
            foreach (var item in bb)
            {
                categoryComboBoxEdit.Properties.Items.Add(item.DataName);
            }

            //var sd = list.GetDataDictionary("PH.Packing.StyleDesc");//款號說明
            //styleDescTextEdit.Properties.Items.Clear();
            //foreach (var item in sd)
            //{
            //    styleDescTextEdit.Properties.Items.Add(item.DataName);
            //}

            WorkOrderCategory woc = (this.BindingSource.Current as WorkOrderCategory);
            if (woc == null) return;
            CustomerBrandCategoryList list1 = new CustomerBrandCategoryList();
            var aa1 = list1.GetCustomerBrandCategories(woc.Customer, woc.CustCode);
            //var CustBrandLst = (this.DataContext as RWOSOPCDataContext).CustomerBrandCategories.Where(P => P.CustCode == (this.BindingSource.Current as WorkOrderCategory).CustCode);
            brandComboBoxEdit.Properties.Items.AddRange(aa1.Select(S => S.Brand).Distinct().ToArray());
            //styleNoComboBoxEdit.Properties.Items.AddRange(CustBrandLst.Select(S => S.StyleNo).Distinct().ToArray());
            categoryComboBoxEdit.Properties.Items.AddRange(aa1.Select(S => S.Category).Distinct().ToArray());
            //GetDistinctStyleNos();

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            //this.barBtnEdit.Visibility = BarItemVisibility.Never;

        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            imgTextEdit.Properties.ReadOnly = true;
        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty((this.BindingSource.Current as WorkOrderCategory).Img))
            {
                ShowP1((this.BindingSource.Current as WorkOrderCategory).Img);
            }
            else
            {
                P1.Image = null;
            }
        }


        private void barBtnBrand_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.BindingSource.EndEdit();

            if (MessageBox.Show("現有的包裝方法將被覆蓋，是否繼續？", "Information", MessageBoxButtons.YesNo) == DialogResult.No)
            {
                return;
            }

            WorkOrderCategory woCategory = this.BindingSource.Current as WorkOrderCategory;
            //CustomerBrandCategory custCategory = (PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>()).CustomerBrandCategories.Where(P => P.Customer == woCategory.Customer && P.CustCode == woCategory.CustCode && P.Brand == brandComboBoxEdit.Text && P.Category == categoryComboBoxEdit.Text && P.StyleNo == styleNoComboBoxEdit.Text).FirstOrDefault();
            CustomerBrandCategoryList list = new CustomerBrandCategoryList();
            CustomerBrandCategory custCategory = list.GetCustomerBrandCategory(woCategory.Customer, woCategory.CustCode, woCategory.Brand, woCategory.StyleNo, woCategory.StyleDesc);

            if (custCategory == null) return;

            woCategory.StyleDesc = custCategory.StyleDesc;
            woCategory.FlatOrHalfFold = custCategory.FlatOrHalfFold;
            woCategory.Hookandeye = custCategory.Hookandeye;
            woCategory.ShoulderStrapAdjustment = custCategory.ShoulderStrapAdjustment;
            woCategory.SizeDispatching = custCategory.SizeDispatching;
            woCategory.BasicRequisition1 = custCategory.BasicRequisition1;
            woCategory.BasicRequisition2 = custCategory.BasicRequisition2;
            woCategory.BasicRequisition3 = custCategory.BasicRequisition3;
            woCategory.ProwBoard = custCategory.ProwBoard;
            woCategory.ExportCtnMeasurement = custCategory.ExportCtnMeasurement;
            woCategory.CartonBeltRequisition = custCategory.CartonBeltRequisition;
            woCategory.InnerBoxMeasurement = custCategory.InnerBoxMeasurement;
            woCategory.Sky_SingleDouble = custCategory.Sky_SingleDouble;
            woCategory.Sky_Desc = custCategory.Sky_Desc;
            woCategory.Boat_SingleDouble = custCategory.Boat_SingleDouble;
            woCategory.Boat_Desc = custCategory.Boat_Desc;
            woCategory.SideMark_SingleDouble = custCategory.SideMark_SingleDouble;
            woCategory.SideMark_Desc = custCategory.SideMark_Desc;
            woCategory.SideMarkPaper_SingleDouble = custCategory.SideMarkPaper_SingleDouble;
            woCategory.SideMarkPaper_Desc = custCategory.SideMarkPaper_Desc;
            woCategory.InnerBoxMark_SingleDouble = custCategory.InnerBoxMark_SingleDouble;
            woCategory.InnerBoxMark_Desc = custCategory.InnerBoxMark_Desc;
            woCategory.MarkerA = custCategory.MarkerA;
            woCategory.MarkerB = custCategory.MarkerB;
            woCategory.MarkerC = custCategory.MarkerC;
            woCategory.MarkerD = custCategory.MarkerD;
            woCategory.MarkerE = custCategory.MarkerE;
            woCategory.BrandA = custCategory.BrandA;
            woCategory.BrandB = custCategory.BrandB;
            woCategory.BrandC = custCategory.BrandC;
            woCategory.BrandD = custCategory.BrandD;
            //Cur_Cust.BrandE = WOCategory.BrandE;
            woCategory.CustomDecalsA = custCategory.CustomDecalsA;
            woCategory.CustomDecalsB = custCategory.CustomDecalsB;
            woCategory.CustomDecalsC = custCategory.CustomDecalsC;
            woCategory.CustomDecalsD = custCategory.CustomDecalsD;
            woCategory.CustomDecalsE = custCategory.CustomDecalsE;
            woCategory.CustomDecalsF = custCategory.CustomDecalsF;
            woCategory.PlasticBags_Material = custCategory.PlasticBags_Material;
            woCategory.PlasticBags_Depth = custCategory.PlasticBags_Depth;
            woCategory.PlasticNeedleStyle = custCategory.PlasticNeedleStyle;
            woCategory.PlasticNeedleLength = custCategory.PlasticNeedleLength;
            woCategory.ClothesHorseStyle = custCategory.ClothesHorseStyle;
            woCategory.PackReference = custCategory.PackReference;
            woCategory.LabelReference = custCategory.LabelReference;
            woCategory.PackMethod = custCategory.PackMethod;
            woCategory.Img = custCategory.Img;

            if (!string.IsNullOrEmpty(woCategory.Img))
            {
                ShowP1(woCategory.Img);
            }
            else
            {
                P1.Image = null;
            }
            PH.RWO.BO.RWOSOPCDataContext dc = this.DataContext as PH.RWO.BO.RWOSOPCDataContext;
            //P1.Image = WOCategory.Pimg;
            if (custCategory.CustomerPackings == null || custCategory.CustomerPackings.Count == 0) return;

            //this.packingWOPackMethodListForm1.BindingSource.Clear();
            //this.packingWOLabelingListForm1.BindingSource.Clear();
            //this.packingWOCupsListForm1.BindingSource.Clear();

            if (woCategory.WorkOrderCategoryCups != null && woCategory.WorkOrderCategoryCups.Count > 0)
            {
                dc.WorkOrderCategoryCups.DeleteAllOnSubmit(woCategory.WorkOrderCategoryCups);
                this.packingWOCupsListForm1.BindingSource.Clear();
                woCategory.WorkOrderCategoryCups.Clear();
                dc.SubmitChanges();
            }

            if (woCategory.WorkOrderCategoryLabelings != null && woCategory.WorkOrderCategoryLabelings.Count > 0)
            {
                dc.WorkOrderCategoryLabelings.DeleteAllOnSubmit(woCategory.WorkOrderCategoryLabelings);
                this.packingWOLabelingListForm1.BindingSource.Clear();
                woCategory.WorkOrderCategoryLabelings.Clear();
                dc.SubmitChanges();
            }

            if (woCategory.WorkOrderCategoryPackings != null && woCategory.WorkOrderCategoryPackings.Count > 0)
            {
                dc.WorkOrderCategoryPackings.DeleteAllOnSubmit(woCategory.WorkOrderCategoryPackings);
                this.packingWOPackMethodListForm1.BindingSource.Clear();
                woCategory.WorkOrderCategoryPackings.Clear();
                dc.SubmitChanges();
            }

            foreach (CustomerPacking item in custCategory.CustomerPackings)
            {
                object obj = packingWOPackMethodListForm1.BindingSource.AddNew();
                WorkOrderCategoryPacking tt = obj as WorkOrderCategoryPacking;
                tt.WorkOrderCategory = woCategory;
                tt.CurrentDataContext = this.DataContext;
                tt.CurrentBindingSource = packingWOPackMethodListForm1.BindingSource;

                //WorkOrderCategoryPacking tt = new WorkOrderCategoryPacking();
                tt.Company = woCategory.Company;
                tt.SalesOrderNo = woCategory.SalesOrderNo;
                tt.WorkOrderNo = woCategory.WorkOrderNo;
                tt.ProductCategory = woCategory.ProductCategory;
                tt.ID = item.ID;
                tt.PackDescCH = item.PackDescCH;
                tt.PackDescEN = item.PackDescEN;
                tt.PackDescTH = item.PackDescTH;
                //this.packingWOPackMethodListForm1.BindingSource.Add(tt);

                woCategory.WorkOrderCategoryPackings.Add(tt);
            }
            this.DataContext.SubmitChanges();
            foreach (CustomerCup item in custCategory.CustomerCups)
            {
                object obj = packingWOCupsListForm1.BindingSource.AddNew();
                WorkOrderCategoryCup tt = obj as WorkOrderCategoryCup;
                tt.WorkOrderCategory = woCategory;
                tt.CurrentDataContext = this.DataContext;
                tt.CurrentBindingSource = packingWOCupsListForm1.BindingSource;

                //WorkOrderCategoryCup tt = new WorkOrderCategoryCup();
                tt.Company = woCategory.Company;
                tt.SalesOrderNo = woCategory.SalesOrderNo;
                tt.WorkOrderNo = woCategory.WorkOrderNo;
                tt.ProductCategory = woCategory.ProductCategory;
                tt.ClrCode = item.ClrCode;
                tt.Cups = item.Cups;
                tt.Size = item.Size;
                tt.Qty = item.Qty;
                //this.packingWOCupsListForm1.BindingSource.Add(tt);

                woCategory.WorkOrderCategoryCups.Add(tt);
            }
            this.DataContext.SubmitChanges();
            foreach (CustomerLabeling item in custCategory.CustomerLabelings)
            {
                object obj = packingWOLabelingListForm1.BindingSource.AddNew();
                WorkOrderCategoryLabeling tt = obj as WorkOrderCategoryLabeling;
                tt.WorkOrderCategory = woCategory;
                tt.CurrentDataContext = this.DataContext;
                tt.CurrentBindingSource = packingWOLabelingListForm1.BindingSource;

                //WorkOrderCategoryLabeling tt = new WorkOrderCategoryLabeling();
                tt.Company = woCategory.Company;
                tt.SalesOrderNo = woCategory.SalesOrderNo;
                tt.WorkOrderNo = woCategory.WorkOrderNo;
                tt.ProductCategory = woCategory.ProductCategory;
                tt.ID = item.ID;
                tt.LabelDescCH = item.LabelDescCH;
                tt.LabelDescEN = item.LabelDescEN;
                tt.LabelDescTH = item.LabelDescTH;
                //this.packingWOLabelingListForm1.BindingSource.Add(tt);

                woCategory.WorkOrderCategoryLabelings.Add(tt);
            }
            this.DataContext.SubmitChanges();

            //SetFormControlState();
            //this.ProcessFunctionRight();
            //this.ProcessBORight();
            //this.SetWholeSubListFormGridView(this);


            this.packingWOPackMethodListForm1.ReSetToolBarState(woCategory.BOWorkMode);
            this.packingWOLabelingListForm1.ReSetToolBarState(woCategory.BOWorkMode);
            this.packingWOCupsListForm1.ReSetToolBarState(woCategory.BOWorkMode);

            this.packingWOPackMethodListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.packingWOLabelingListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.packingWOCupsListForm1.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;

            this.packingWOPackMethodListForm1.objListGridView.OptionsBehavior.Editable = true;
            this.packingWOLabelingListForm1.objListGridView.OptionsBehavior.Editable = true;
            this.packingWOCupsListForm1.objListGridView.OptionsBehavior.Editable = true;

        }
        private void uploadPictureToolStripMenuItem_Click(object sender, EventArgs e)
        {
            UploadPicture();
        }

        private void UploadPicture()
        {
            OpenFileDialog file = new OpenFileDialog();
            //file.Filter = "PCX|*.PCX";
            file.Filter = "圖片|*.PCX;*.jpg;*.png";
            if (file.ShowDialog() == DialogResult.OK)
            {
                ShowP1(file.FileName);

                WorkOrderCategory woc = this.BindingSource.Current as WorkOrderCategory;
                if (woc != null) woc.Img = file.FileName;
            }
        }
        void ShowP1(string FilePath)
        {
            this.ImgPath = FilePath;
            string ext = System.IO.Path.GetExtension(FilePath);
            if (ext.ToUpper() == ".PCX")
            {
                //ImagePcx _Pcx = new ImagePcx(FilePath);
                //P1.Image = _Pcx.PcxImage;

                PcxFile pcx = new PcxFile();
                Image image = pcx.Load(FilePath);
                P1.Image = image;
            }
            else
            {
                P1.Image = Image.FromFile(FilePath);
            }
        }

        #region Value change

        private void brandComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {
            string s = brandComboBoxEdit.EditValue.ToString();
            this.styleNoComboBoxEdit.EditValue = "";
            GetDistinctStyleNos(s);
        }
        private void GetDistinctStyleNos(string brand)
        {
            styleNoComboBoxEdit.Properties.Items.Clear();
            WorkOrderCategory woc = (this.BindingSource.Current as WorkOrderCategory);
            if (woc == null) return;
            CustomerBrandCategoryList list = new CustomerBrandCategoryList();
            var aa = list.GetCustomerBrandCategories(woc.Customer, woc.CustCode, brand);
            styleNoComboBoxEdit.Properties.Items.AddRange(aa.Select(S => S.StyleNo).Distinct().ToArray());
        }
        private void styleNoComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {
            string brand = brandComboBoxEdit.EditValue.ToString();
            string styleno = styleNoComboBoxEdit.EditValue.ToString();
            this.styleDescTextEdit.EditValue = "";
            GetDistinctStyleDescs(brand, styleno);
        }
        private void GetDistinctStyleDescs(string brand, string styleno)
        {
            styleDescTextEdit.Properties.Items.Clear();
            WorkOrderCategory woc = (this.BindingSource.Current as WorkOrderCategory);
            if (woc == null) return;
            CustomerBrandCategoryList list = new CustomerBrandCategoryList();
            var aa = list.GetCustomerBrandCategories(woc.Customer, woc.CustCode, brand, styleno);
            styleDescTextEdit.Properties.Items.AddRange(aa.Select(S => S.StyleDesc).Distinct().ToArray());
        }

        #endregion

        protected override void SetToolBarState(PH.Platform.BO.Interface.WorkMode aState)
        {
            base.SetToolBarState(aState);
            this.barBtnBrand.Enabled = aState == PH.Platform.BO.Interface.WorkMode.Edit;
            this.P1.Properties.ContextMenuStrip = aState == PH.Platform.BO.Interface.WorkMode.Edit ? this.contextMenuStrip1 : null;
        }

        private void xtraTabControl1_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            if (this.IsNew || this.IsEditting)
                this.OnClickEdit();
        }

        private void barButtonPackRequest_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.Packing.JobPackingRequestReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barTaiPackRequest_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.TH.JobPackingRequestTaiReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barButtonWOFiles_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.Packing.JobPackingWOSupplementReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barTaiWOFiles_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.TH.JobPackingWOSupplementTaiReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barLocationRequest_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.Packing.JobPackingLocationReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }

        private void barTaiLocationRequest_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.RWO.BO.WorkOrderCategory cbc = this.BindingSource.Current as PH.RWO.BO.WorkOrderCategory;
            if (cbc == null) return;
            PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            data.AssemblyName = "PH.RWO.BackEnd3.0.dll";　//當前dll全名
            data.ClassFullName = typeof(PH.RWO.BackEnd.ReportJob.TH.JobPackingLocationTaiReport).FullName;//報表全名
            data.JobName = string.Format("Packing Report-{0}", cbc.Customer);//JOB名稱
            data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            data.Parameter = string.Format("{0};{1};{2};{3}", cbc.Company, cbc.SalesOrderNo, cbc.WorkOrderNo, cbc.ProductCategory);
            PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }



    }

}
