using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.LWPM.UI.PI
{
    public partial class PIHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PIHeaderListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.BindingSource.DataSource = db.PIHeaders.OrderByDescending(p => p.PIDate);

            this.EditorTypeName = typeof(PIHeaderDetailForm).FullName;
            base.DataBind();
        }

        //private void barBtnPrint_EnternaltoYT_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.EteralToPY, InvoiceTypes.ProformaInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_SheentoPY_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.SheenToPY, InvoiceTypes.ProformaInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_PHtoEnternal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.PHHKToEternal, InvoiceTypes.ProformaInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_VendortoPH_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.VendorToPHHK, InvoiceTypes.ProformaInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_EnternaltoYT_C_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.EteralToPY, InvoiceTypes.CommercialInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_PHtoEnternal_C_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.PHHKToEternal, InvoiceTypes.CommercialInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_VendortoPH_C_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.VendorToPHHK, InvoiceTypes.CommercialInvoice);
        //    rtpPI.ShowPreview();
        //}

        //private void barBtnPrint_SheentoPY_C_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, PITypes.SheenToPY, InvoiceTypes.CommercialInvoice);
        //    rtpPI.ShowPreview();
        //}




        private void btnItemPrintPI_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, InvoiceTypes.ProformaInvoice);
            rtpPI.ShowPreview();
        }

        private void btnItemPrintCI_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PIReport rtpPI = new PIReport(this.BindingSource.Current as PIHeader, InvoiceTypes.CommercialInvoice);
            rtpPI.ShowPreview();
        }


    }
}
