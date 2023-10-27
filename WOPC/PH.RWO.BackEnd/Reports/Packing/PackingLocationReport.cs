using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
//using FI = Fireball.Drawing.FreeImage;
using PH.RWO.BO;
using System.Linq;



namespace PH.RWO.BackEnd.Reports.Packing
{
    public partial class PackingLocationReport : DevExpress.XtraReports.UI.XtraReport
    {
        public PackingLocationReport()
        {
            InitializeComponent();
        }
        private string _company;
        private string _salesOrderNo;
        private string _workOrderNo;
        private string _productcategory;

        public PackingLocationReport(string company, string salesOrderNo, string workOrderNo, string productcategory)
            : this()
        {
            this._company = company;
            this._salesOrderNo = salesOrderNo;
            this._workOrderNo = workOrderNo;
            this._productcategory = productcategory;
            //SetHeaderCaption();
        }
        //public WorkOrderCategory   CurWO
        //{
        //    get
        //    {
        //        return (new CustomerBrandCategoryList()).CurrentDataContext.WorkOrderCategories.Where(P =>P.Company==_company && P.SalesOrderNo ==_salesOrderNo  && P.WorkOrderNo ==_workOrderNo && P.ProductCategory ==_productcategory).FirstOrDefault();
        //    }
        //}
        private void SetHeaderCaption()
        {
            //PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();
            //var aa = list.GetWorkOrders(this._workOrderNo);

            //foreach (PH.RWO.BO.WorkOrderCategory wo in CurWO.WorkOrderCategories)
            //{

            //this.cellFactory.Text = CurWO.WorkOrder.Factory;
            //this.cellProjectNo.Text = CurWO.WorkOrder.ProjectNo;
            //this.cellSalseOrderNo.Text = CurWO.SalesOrderNo;
            //this.cellWorkOrderNo.Text = this._workOrderNo;
            //this.cellWOCreateDate.Text = string.Format("{0:yyyy-MM-dd}",CurWO.WorkOrder.WOCreateDate);
            //this.cellPHStyle.Text = CurWO.WorkOrder.StyleNo;
            //this.cellCustStyle.Text = CurWO.WorkOrder.CustomerStyleNoStr;
            //this.CellPackReference.Text = CurWO.PackReference;
            //this.CellPackMethod.Text = CurWO.PackMethod;

            //}

        }


        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PH.Packing.BO.PK_pklocation p = this.GetCurrentRow() as PH.Packing.BO.PK_pklocation;
            //if (p == null) return;

            //string path = p.Tpwj;

            //if (!System.IO.File.Exists(path)) return;
            //string ext = System.IO.Path.GetExtension(path);
            //if (string.IsNullOrEmpty(ext)) return;

            //this._freeImage = new Fireball.Drawing.FreeImage(path);
            //if (_freeImage != null)
            //{
            //    //xrPictureBox1.Location = Point.Empty;
            //    xrPictureBox1.Image = _freeImage.GetBitmap();
            //    //xrPictureBox1.SizeMode = PictureBoxSizeMode.AutoSize;
            //}

            //if (ext.ToUpper() == ".PCX")
            //{
            //    try
            //    {
            //        PH.Image.ImagePcx _Pcx = new PH.Image.ImagePcx(path);
            //        xrPictureBox1.Image = _Pcx.PcxImage;
            //    }
            //    catch (Exception)
            //    {
            //        System.Drawing.Bitmap m_bmp = DevIL.DevIL.LoadBitmap(path);
            //        if (m_bmp != null)
            //        {
            //            xrPictureBox1.Image = m_bmp;
            //        }
            //    }

            //}
            //else
            //{
            //    xrPictureBox1.Image = new Bitmap(path);
            //}
            WorkOrderCategory woc = this.GetCurrentRow() as WorkOrderCategory;

            //this.lbTitle.Text = "沛恒制衣 ( 東莞 ) 有限公司";
            //if (woc.WorkOrder.Factory == "CL")
            //{
            //    this.lbTitle.Text = "P.Y. Garments Mfg.  (Bangladesh) Co. Ltd.";
            //}

            ShowP1(woc.Img);
        }
        void ShowP1(string FilePath)
        {
            if (string.IsNullOrEmpty(FilePath))
            {
                return;
            }
            string ext = System.IO.Path.GetExtension(FilePath);
            if (ext.ToUpper() == ".PCX")
            {
                //ImagePcx _Pcx = new ImagePcx(FilePath);
                //xrPictureBox1.Image = _Pcx.PcxImage;

                PcxFile pcx = new PcxFile();
                Image image = pcx.Load(FilePath);
                xrPictureBox1.Image = image;
            }
            else
            {
                xrPictureBox1.Image = new Bitmap(FilePath);
            }
        }

    }
}
