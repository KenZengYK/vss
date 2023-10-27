using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
//using FI = Fireball.Drawing.FreeImage;
using PH.RWO.BO;
using System.Linq;
using System.Data.Linq;

namespace PH.RWO.BackEnd.Reports.Packing
{
    public partial class CustomerLocationReport : DevExpress.XtraReports.UI.XtraReport
    {
        public CustomerLocationReport()
        {
            InitializeComponent();
        }

        //public string CateGory
        //{
        //    get
        //    {
        //        switch (_skind)
        //        {
        //            case 1: return "圍";
        //            case 2: return "褲";
        //            case 3: return "衫";
        //            case 4: return "套裝";
        //            case 5: return "吊襪扣";
        //            case 6: return "短褲";
        //            case 7: return "背心";
        //            case 8: return "裙";
        //        }
        //    }
        //}

        private string _customer;
        private string _customercodeX;
        private string _brand;
        private string _category;
        private Guid _gid;

        public CustomerLocationReport(string customer, string CustCode, string brand, string category, Guid gid)
            : this()
        {
            this._customer = customer;
            this._customercodeX = CustCode;
            this._brand = brand;
            this._category = category;
            this._gid = gid;

            SetHeaderCaption();
        }
        public CustomerBrandCategory cust { get; set; }
        //{
        //    get
        //    {
        //        return (new CustomerBrandCategoryList()).CurrentDataContext.CustomerBrandCategories.Where(P => P.Customer == _customer && P.CustCode==_customercodeX && P.Brand == _brand && P.Category == _category).FirstOrDefault();
        //        //return null;
        //    }
        //}
        private void SetHeaderCaption()
        {
            //PH.Packing.BO.PKcustomerList list = new PH.Packing.BO.PKcustomerList();

            //var cust = list.GetCustomer(this._customer, this._brand);
            //if (cust == null) return;

            //this.cellCustomer.Text = _customer;
            //this.cellBrand.Text = _brand;
            //this.cellKind.Text = cust.Category;
            //this.cellStyleNo.Text = cust.StyleNo;
        }

        //private FI _freeImage = null;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PH.Packing.BO.PK_customer p = this.GetCurrentRow() as PH.Packing.BO.PK_customer;
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
            cust = this.GetCurrentRow() as CustomerBrandCategory;
            ShowP1(cust.Img);

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
