using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using PH.POPC.BO;
using PH.Platform.ExtendLibrary;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.POPC.UI.Report
{
    public partial class POPCLevel5Report : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPCLevel5Report()
        {
            InitializeComponent();
            InitValue();
        }

        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private string Project { get { return this.teProject.Text.Trim(); } }

        private DateTime DeliveryDateFrom { get { return this.deDeliveryFrom.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryFrom.EditValue = null; else this.deDeliveryFrom.EditValue = value; } }
        private DateTime DeliveryDateTo { get { return this.deDeliveryTo.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryTo.EditValue = null; else this.deDeliveryTo.EditValue = value; } }
        private DateTime IssueDateFrom { get { return this.deIssueFrom.DateTime; } set { if (value == DateTime.MinValue) this.deIssueFrom.EditValue = null; else this.deIssueFrom.EditValue = value; } }
        private DateTime IssueDateTo { get { return this.deIssueTo.DateTime; } set { if (value == DateTime.MinValue)this.deIssueTo.EditValue = null; else this.deIssueTo.EditValue = value; } }

        private int POStatus { get { return Convert.ToInt32(this.rgInvoice.EditValue); } }


        public PH.POPC.BO.POPCEnquiryCondition Condition { get; set; }
        PH.POPC.BO.POPCDataContext context;
        private void InitValue()
        {
            #region Table

            //table-Supplier
            DataTable dtSupplier = new DataTable();
            DataColumn col;
            DataRow row;

            col = new DataColumn();
            col.ColumnName = "Supplier";
            col.DataType = System.Type.GetType("System.String");
            dtSupplier.Columns.Add(col);


            ////table-project
            //DataTable dtProject = new DataTable();
            //col = new DataColumn();
            //col.ColumnName = "ProjectNo";
            //col.DataType = System.Type.GetType("System.String");
            //dtProject.Columns.Add(col);

            #endregion

            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();

            //Supplier
            PH.MIDc.BO.DetailList detaillist = new PH.MIDc.BO.DetailList();
            detaillist.CurrentDataContext.CommandTimeout = 2000;
            var supps = detaillist.GetERPSuppliers(true);
            foreach (var supp in supps)
            {
                if (string.IsNullOrEmpty(supp) || string.IsNullOrEmpty(supp.Trim())) continue;

                row = dtSupplier.NewRow();
                row["Supplier"] = supp;
                dtSupplier.Rows.Add(row);

                //teSupplier.Properties.Items.Add(supp);
                //teSupplier.Properties.Items.Add(supp, CheckState.Unchecked, true);
            }
            this.teSupplier.DataSource = dtSupplier;
            this.teSupplier.DisplayMember = "Supplier";

            //Project
            //this.teProject.DataSource = dtProject;
            //this.teProject.DisplayMember = "ProjectNo";

        }

        private void GenerateCondition()
        {
            Condition = new PH.POPC.BO.POPCEnquiryCondition();

            Condition.Supplier = this.Supplier;
            Condition.ProjectFrom = this.Project;
            Condition.ProjectTo = this.Project;

            DateTime dt;
            if (IssueDateFrom == DateTime.MinValue) IssueDateFrom = IssueDateTo;
            if (IssueDateTo == DateTime.MinValue) IssueDateTo = IssueDateFrom;
            dt = IssueDateFrom;
            if (IssueDateFrom > IssueDateTo)
            { IssueDateFrom = IssueDateTo; IssueDateTo = dt; }

            if (DeliveryDateFrom == DateTime.MinValue) DeliveryDateFrom = DeliveryDateTo;
            if (DeliveryDateTo == DateTime.MinValue) DeliveryDateTo = DeliveryDateFrom;
            dt = DeliveryDateFrom;
            if (DeliveryDateFrom > DeliveryDateTo)
            { DeliveryDateFrom = DeliveryDateTo; DeliveryDateTo = dt; }

            Condition.IssueDateFrom = this.IssueDateFrom;
            Condition.IssueDateTo = this.IssueDateTo;
            Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            Condition.DeliveryDateTo = this.DeliveryDateTo;

            Condition.POStatus = this.POStatus;

            if (string.IsNullOrEmpty(this.Supplier) && string.IsNullOrEmpty(this.Project))
            {
                //MessageBox.Show("Please input supplier.");
                throw new Exception("Please input Supplier or Project No.");
            }
        }

        private void GetReportData()
        {
            GenerateCondition();
            EnquiryPOPC(Condition);
        }

        #region Enquiry

        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            //this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = context;

                #region Level 5

                var cc = from c in context.POChangesMonitors
                         where c.Company == condition.Company
                         && (c.POColorSizeDetail.VersionFlag ?? false)
                         && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                         && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                         && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                             //&& (c.InvoiceNotMatching != null && c.InvoiceNotMatching != "")
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                         && (condition.POStatus == 2 //All
                            || (condition.POStatus == 0 && !(c.InvoiceNo == null || c.InvoiceNo == "")) //Yes
                            || (condition.POStatus == 1 && (c.InvoiceNo == null || c.InvoiceNo == "")) //No
                            )
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                         && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.HDOETA) >= condition.IssueDateFrom && (c.POColorSizeDetail.HDOETA) < condition.IssueDateTo.AddDays(1))
                                )
                         && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )


                         orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
                         select c;

                this.bindingSource1.DataSource = cc;

                #endregion

                //GridViewSort();
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }

        #endregion

        public void PrintPOPC(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCPrintType printType, POPCPrintLevel printLevel)
        {
            GetReportData();

            Common.PrintPOPC(view, printType, printLevel);

        }

        private void btnNonMatching_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GetReportData();


            PH.POPC.BackEnd.POPCNewformat.POPCLevel5Report rpt = new PH.POPC.BackEnd.POPCNewformat.POPCLevel5Report();
            rpt.DataSource = this.bindingSource1;
            rpt.ShowPreviewDialog();
        }

        private void Level1_POPCForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Five1);
        }
        private void Level1_SupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Five1);
        }

        BasicInfoDataContext basicInfoDB;
        private void teSupplier_EditValueChanged(object sender, EventArgs e)
        {
            if (basicInfoDB == null)
            {
                basicInfoDB = ContextBuilder.CreateContext<BasicInfoDataContext>();
            }

            var Suppliers = this.Supplier.Split(new string[] { ", ", "," }, StringSplitOptions.RemoveEmptyEntries);
            this.txtPaymentTerms.EditValue = "";
            foreach (var obj in Suppliers)
            {
                var Supp = basicInfoDB.SupplierProfiles.FirstOrDefault(p => p.ERPSupplier == obj);
                this.txtPaymentTerms.Text += obj + ": " + Supp.PaymentTerms + System.Environment.NewLine;
            }

            //var list = basicInfoDB.SupplierProfiles.Where(p => Suppliers.Contains(p.ERPSupplier)).Select(p => new { p.ERPSupplier, p.PaymentTerms }).to;

            //this.txtPaymentTerms.EditValue = "";
            //foreach (var obj in list)
            //{
            //    this.txtPaymentTerms.Text += obj.ERPSupplier + " " + obj.PaymentTerms + System.Environment.NewLine;
            //}
        }
    }
}
