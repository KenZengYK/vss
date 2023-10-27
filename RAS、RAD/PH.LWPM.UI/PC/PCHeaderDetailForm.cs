using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PC
{
    public partial class PCHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public PCHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            this.txtVendorCode.Properties.DataSource = db.Vendors;
            this.txtVendorCode.Properties.DisplayMember = "Name_EN";
            this.txtVendorCode.Properties.ValueMember = "Code";

            this.pcDetailListForm1.BindingSource.DataSource = (this.BindingSource.Current as PCHeader).PCDetails.OrderBy(p => p.SortID);
            this.pcDetailListForm1.CurrentPCHeader = this.BindingSource.Current as PCHeader;

        }

        //protected override void SaveCurrent()
        //{
        //    PCHeader pcHeader = this.BindingSource.Current as PCHeader;
        //    PCDetail detail = pcHeader.PCDetails.FirstOrDefault();
        //    if (detail != null && !string.IsNullOrEmpty(detail.PONO))
        //    {
        //        POHeader poHeader = (this.DataContext as RAPLQDataContext).POHeaders.FirstOrDefault(p => p.PONO == detail.PONO);
        //        pcHeader.ShipmentMode = poHeader.TransitMode;
        //        pcHeader.Incoterms = poHeader.Incoterms;
        //        pcHeader.LoadingPort = poHeader
        //        pcHeader.Destination = "";
        //        pcHeader.PaymentTerms = "";
        //        pcHeader.OriginsCountry = "";
        //    }

        //    base.SaveCurrent();
        //}
    }
}
