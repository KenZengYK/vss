using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections.Generic;
using System.IO;
using System.Linq;


namespace PH.POPC.BackEnd
{
    public partial class SubReport2 : DevExpress.XtraReports.UI.XtraReport
    {
        public SubReport2()
        {
            InitializeComponent();
        }
       public  PH.POPC.BO.POHeader _poheader;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            var items1 = from aa in _poheader.PODetails
                        where aa.Photo != null
                        select aa;
            int count1 = items1 == null ? 0 : items1.Count();
            this.xrPageBreak1.Visible = count1 == 0 ? false : true;


            //    PH.POPC.BO.PODetail d = DetailReport.GetCurrentRow() as PH.POPC.BO.PODetail;// this.DataSource as List<PH.POPC.BO.POHeader>;
            //    if (d.PODetailPhoto == null || d.PODetailPhoto.Photo == null)
            //    {
            //        this.GroupFooter1.Visible = false;
            //    }
            //    else
            //    {
            //        this.GroupFooter1.Visible = true;
            //    }

           // POPC.BO.PODetailPhoto
            if (this._poheader == null) return;
            POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            
            var items = from aa in context.PODetailPhotos
                        where aa.PONO==this._poheader.PONO 
                        && aa.Company==this._poheader.Company 
                        && aa.AmendmentNo==this._poheader.AmendmentNo 
                        && aa.Version==this._poheader.Version 
                        && aa.Photo != null
                        select aa;
            if (items == null) return;
            int count = items.Count();


            int i = 0, col = 0, row = 0, cols = 1, x = 0, y = 0, x1 = 0, y1 = 0;
            int w =750, h = 670, h1 = 25;
            foreach (var item in items)
            {
                //this.PageWidth
                    
                i += 1;
                col = i % cols;
                row = (int)((i * 1.0) / cols);

                x = (col - 1) * w + 8;
                y = (row - 1) * h + (row - 1) * h1 + (row - 1) * 5;

                x1 = (col - 1) * w + 8;
                y1 = row * h + (row - 1) * h1 + row * 5;

                XRPictureBox xrPictureBox = new XRPictureBox();
                xrPictureBox.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                   | DevExpress.XtraPrinting.BorderSide.Right)
                   | DevExpress.XtraPrinting.BorderSide.Bottom)));
                xrPictureBox.Location = new System.Drawing.Point(x, y);
                xrPictureBox.Name = "xrPictureBox" + i.ToString();
                xrPictureBox.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
                xrPictureBox.Size = new System.Drawing.Size(w, h);
                xrPictureBox.Sizing = DevExpress.XtraPrinting.ImageSizeMode.StretchImage;


                MemoryStream ms = new MemoryStream(item.Photo, 0, item.Photo.Length);
                ms.Position = 0;
                Bitmap map = new Bitmap(ms);
                //ms.Close();
                xrPictureBox.Image = (Image)map;
                this.Detail.Controls.Add(xrPictureBox);


                XRLabel xrLabelPic = new XRLabel();
                xrLabelPic.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
                xrLabelPic.Location = new System.Drawing.Point(x1, y1);
                xrLabelPic.Name = "xrLabelPic" + i.ToString();
                xrLabelPic.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
                xrLabelPic.Size = new System.Drawing.Size(w, h1);
                xrLabelPic.Text = item.OrderLine.ToString();//   item.ItemCode + "----" + item.SupplierReference;
                this.Detail.Controls.Add(xrLabelPic);

            }

            this.Detail.Height = row * (h + h1) + 50;

        }

        private void ReportHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrLabel1.Text = this._poheader.PPNO;
            this.subReport11._poheader = this._poheader;
        }







    }
}
      
