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

namespace PH.POPC.UI.Report
{
    public partial class POPCLevel5Part3Report : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPCLevel5Part3Report()
        {
            InitializeComponent();
            InitValue();
        }

        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private int POStatus { get { return Convert.ToInt32(this.rgStatus.EditValue); } }


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



        }

        private void GenerateCondition()
        {
            Condition = new PH.POPC.BO.POPCEnquiryCondition();


            Condition.Supplier = this.Supplier;
            Condition.POStatus = this.POStatus;

            if (string.IsNullOrEmpty(this.Supplier))
            {
                //MessageBox.Show("Please input supplier.");
                throw new Exception("Please input supplier.");
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

                #region Level 5 Part 3

                var cc = from c in context.POChangesMonitors
                         where c.Company == condition.Company
                         && (c.POColorSizeDetail.VersionFlag ?? false)
                         && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                         && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                         && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                         && (c.InvoiceNotMatching != null && c.InvoiceNotMatching != "")
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                         && (condition.POStatus == 0 //All
                            || (condition.POStatus == 1 && !(c.ActionStatus ?? false)) //Outstanding
                            || (condition.POStatus == 2 && (c.ActionStatus ?? false)) //Completed
                            )


                         orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
                         select c;

                this.bindingSource1.DataSource = cc;

                //this.bindingSource1.DataSource = cc;
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
            PH.POPC.BackEnd.POPCNewformat.NonMatchingReport rpt = new PH.POPC.BackEnd.POPCNewformat.NonMatchingReport();
            rpt.DataSource = this.bindingSource1;
            rpt.ShowPreviewDialog();
        }


    }
}
