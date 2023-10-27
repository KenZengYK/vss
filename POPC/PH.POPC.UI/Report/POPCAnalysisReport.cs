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
using PH.Platform.BO;

namespace PH.POPC.UI.Report
{
    public partial class POPCAnalysisReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPCAnalysisReport()
        {
            InitializeComponent();
            InitValue();
        }
        //int _level;

        #region fields

        private string Company
        {
            get
            {
                return this.teCompany.Text;
            }
        }
        private PH.POPC.BO.POPCAnalysisSortBy SortBy { get { return (PH.POPC.BO.POPCAnalysisSortBy)Convert.ToInt32(this.rgSortBy.EditValue); } }

        private int POStatus { get { return Convert.ToInt32(this.rgStatus.EditValue); } }
        private string OrderClass { get { return this.OrderClassEditor.Text; } }
        private string EndCustCode { get { return this.teEndCustCode.Text.Trim(); } }
        private string Supplier { get { return this.teSupplier.Text.Trim(); } }

        private DateTime IssueDateFrom { get { return this.deIssueFrom.DateTime; } set { if (value == DateTime.MinValue) this.deIssueFrom.EditValue = null; else this.deIssueFrom.EditValue = value; } }
        private DateTime IssueDateTo { get { return this.deIssueTo.DateTime; } set { if (value == DateTime.MinValue)this.deIssueTo.EditValue = null; else this.deIssueTo.EditValue = value; } }
        private DateTime DeliveryDateFrom { get { return this.deDeliveryFrom.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryFrom.EditValue = null; else this.deDeliveryFrom.EditValue = value; } }
        private DateTime DeliveryDateTo { get { return this.deDeliveryTo.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryTo.EditValue = null; else this.deDeliveryTo.EditValue = value; } }

        public PH.POPC.BO.POPCEnquiryCondition Condition { get; set; }
        PH.POPC.BO.POPCDataContext context;

        #endregion


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

            //table-Cust
            DataTable dtCust = new DataTable();
            col = new DataColumn();
            col.ColumnName = "Customer";
            col.DataType = System.Type.GetType("System.String");
            dtCust.Columns.Add(col);


            #endregion


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

            //EndCustCode
            PH.RWO.BO.CustomerCodeList custList = new PH.RWO.BO.CustomerCodeList();
            var custs = (from a in custList.CurrentDataContext.CustomerCodes
                         orderby a.CustomerAlias
                         select a.CustomerAlias).Distinct();
            foreach (var cust in custs)
            {
                if (string.IsNullOrEmpty(cust) || string.IsNullOrEmpty(cust.Trim())) continue;

                row = dtCust.NewRow();
                row["Customer"] = cust;
                dtCust.Rows.Add(row);

                //this.teEndCustCode.Properties.Items.Add(cust);
                //this.teEndCustCode.Properties.Items.Add(cust, CheckState.Unchecked, true);
            }
            this.teEndCustCode.DataSource = dtCust;
            this.teEndCustCode.DisplayMember = "Customer";

            //PurchaseOfficer

            POPCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<POPCDataContext>();
            DataTable dtPurchaseOfficer = db.ExecuteDataTable("select distinct PurchaseOfficer from POHeader where VersionFlag = 1 and status <> '-1' and PurchaseOfficer <> ''", "dtPurchaseOfficer");
            //var PurchaseOfficerList = db.POHeaders.Where(p => (p.VersionFlag ?? false) && p.Status != "-1" && p.PurchaseOfficer != "")
            //    .Select(p => p.PurchaseOfficer).Distinct();
            this.tePurchaseOfficer.DataSource = dtPurchaseOfficer;
            this.tePurchaseOfficer.DisplayMember = "PurchaseOfficer";
        }

        private POPCDataContext ContextBuilder<T1>()
        {
            throw new NotImplementedException();
        }

        private void GenerateCondition(int level)
        {
            Condition = new PH.POPC.BO.POPCEnquiryCondition();

            //由David加入這3個屬性， 2020-09-24
            Condition.PHDGOrPYHK = this.radPHDGOrPYHK.Text;
            Condition.SuppCodeOrCustCode = this.radSuppCodeOrCustCode.EditValue.ToString();
            Condition.PurchaseOfficer = this.tePurchaseOfficer.Text;

            #region Date Time

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

            #endregion


            if (string.IsNullOrEmpty(EndCustCode) &&
                string.IsNullOrEmpty(Supplier) &&
               (
                IssueDateFrom == DateTime.MinValue &&
                DeliveryDateFrom == DateTime.MinValue
                ))
            {
                MessageBox.Show("Must input a condition at least!");
                return;
            }


            Condition.AnalysisSortBy = this.SortBy;
            Condition.Company = this.Company;
            Condition.EndCustCode = this.EndCustCode;
            Condition.Supplier = this.Supplier;
            Condition.POStatus = this.POStatus;
            Condition.OrderClass = this.OrderClass;

            Condition.IssueDateFrom = this.IssueDateFrom;
            Condition.IssueDateTo = this.IssueDateTo;
            Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            Condition.DeliveryDateTo = this.DeliveryDateTo;

            //this.DialogResult = DialogResult.OK;
        }
        private void labelControl4_DoubleClick(object sender, EventArgs e)
        {
            //test open
            System.Diagnostics.ProcessStartInfo infor = new System.Diagnostics.ProcessStartInfo();
            infor.FileName = "TestPT.exe";
            infor.Arguments = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            System.Diagnostics.Process proc;
            try
            {
                proc = System.Diagnostics.Process.Start(infor);
                System.Threading.Thread.Sleep(500);
            }
            catch (Exception)
            {
                return;
            }
        }

        private void GetReportData(POPCPrintLevel printLevel)
        {
            int level = -11;
            switch (printLevel)
            {
                case POPCPrintLevel.None:
                    break;
                case POPCPrintLevel.InAdvance:
                    break;
                case POPCPrintLevel.OneA:
                case POPCPrintLevel.OneB:
                    level = 1;
                    break;
                case POPCPrintLevel.TwoA:
                case POPCPrintLevel.TwoB:
                case POPCPrintLevel.TwoAChange:
                case POPCPrintLevel.TwoBChange:
                    level = 2;
                    break;
                case POPCPrintLevel.Three:
                    level = 3;
                    break;
                case POPCPrintLevel.Four:
                    level = 4;
                    break;
                case POPCPrintLevel.Five1:
                case POPCPrintLevel.Five2:
                    level = 5;
                    break;
                default:
                    break;
            }
            GenerateCondition(level);
            EnquiryPOPC(Condition, level);
        }

        #region Enquiry

        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition, int level)
        {
            //this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = context;

                //_sortby = condition.SortBy;
                if (level == 1)
                {
                    #region Level 1

                    var cc = from c in context.POColorSizeDetails
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                             && (c.VersionFlag ?? false)
                             && c.PODetail.POHeader.POType == (int)POType.PO
                             && (c.PODetail.POHeader.Flag == null || c.PODetail.POHeader.Flag == "")
                                 //&& (!(c.Pending ?? false))
                             && (c.PODetail.Flag == null || c.PODetail.Flag == "")
                             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.PODetail.POHeader.Supplier))
                                 //&& (string.IsNullOrEmpty(condition.ProjectFrom) || (c.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                             && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.PHOutstandingQty > 0) //Outstandingadmin23

                                || (condition.POStatus == 2 && c.PHOutstandingQty <= 0) //Completed
                                )
                             && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.PODetail.POHeader.OrderClass))
                             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.PODetail.POHeader.EndCustCode))
                                 //&& (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.PODetail.POHeader.Dept))
                                 //&& (string.IsNullOrEmpty(condition.Factory) || c.PODetail.POHeader.Factory == condition.Factory)
                                 //&& (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.SupplierReference))
                                 //&& (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.ColorCode))
                                 //&& (!condition.Flowup || (c.FlowupFlag != null && c.FlowupFlag != ""))
                                 //&& (string.IsNullOrEmpty(condition.Coordinator) || c.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                             && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                                )
                             && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )
                             //&& (condition.ExftyDateFrom == DateTime.MinValue ||
                             //      ((c.WOExftyDate) >= condition.ExftyDateFrom && (c.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                             //   )

                             orderby c.PONO, c.OrderLine, c.SKU
                             select c;

                    this.bindingSource1.DataSource = cc;
                    #endregion
                }
                else if (level == 2)
                {
                    #region Level 2
                    var cc = from c in context.POChangesMonitors
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                                 //&& (!(c.POColorSizeDetail.Pending ?? false))
                             && (c.POColorSizeDetail.VersionFlag ?? false)
                             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                                 //&& (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                             && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                )
                                 //&& (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POColorSizeDetail.PODetail.POHeader.OrderClass))
                             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POColorSizeDetail.PODetail.POHeader.EndCustCode))
                                 //&& (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POColorSizeDetail.PODetail.POHeader.Dept))
                                 //&& (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
                                 //&& (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.POColorSizeDetail.SupplierReference))
                                 //&& (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.POColorSizeDetail.ColorCode))
                                 //&& (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                                 //&& (!condition.Flowup || (c.POColorSizeDetail.FlowupFlag != null && c.POColorSizeDetail.FlowupFlag != ""))
                             && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                                )
                             && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )
                             //&& (condition.ExftyDateFrom == DateTime.MinValue ||
                             //      ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                             //   )

                             orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
                             select c;

                    this.bindingSource1.DataSource = cc;
                    #endregion
                }
                else if (level == 3)
                {
                    #region Level 3
                    var cc = from c in context.PORCs
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO)) 
                                 //&& (!(c.POColorSizeDetail.Pending ?? false))
                             && (c.POColorSizeDetail.VersionFlag ?? false)
                             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                                 // && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                             && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                )
                             && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POColorSizeDetail.PODetail.POHeader.OrderClass))
                             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POColorSizeDetail.PODetail.POHeader.EndCustCode))
                                 //&& (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POColorSizeDetail.PODetail.POHeader.Dept))
                                 //&& (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
                                 //&& (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.POColorSizeDetail.SupplierReference))
                                 //&& (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.POColorSizeDetail.ColorCode))
                                 //&& (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                                 //&& (!condition.Flowup || (c.POColorSizeDetail.FlowupFlag != null && c.POColorSizeDetail.FlowupFlag != ""))
                             && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                                )
                             && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )
                             //&& (condition.ExftyDateFrom == DateTime.MinValue ||
                             //      ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                             //   )

                             //orderby c.Supplier, c.ProjectNo, c.SKU, c.RCNO
                             select c;

                    //calc [InvoiceAmount] = Supp Qty * Unit Price
                    //foreach (var c in cc)
                    //{
                    //    if (!c.InvoiceAmount.HasValue)
                    //        c.InvoiceAmount = Convert.ToDouble(c.SuppRCQty * c.Price);
                    //}

                    this.bindingSource1.DataSource = cc;
                    #endregion
                }
                if (level == 4)
                {
                    #region Level 4

                    var cc = from c in context.POColorSizeDetails
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                             && (c.VersionFlag ?? false)
                             && c.PODetail.POHeader.POType == (int)POType.PO
                             && (c.PODetail.POHeader.Flag == null || c.PODetail.POHeader.Flag == "") && ((c.Pending ?? false))
                             && (c.PODetail.Flag == null || c.PODetail.Flag == "")
                                 //&& (string.IsNullOrEmpty(condition.Supplier) || c.PODetail.POHeader.Supplier == condition.Supplier)
                             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.PODetail.POHeader.Supplier))
                             && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                             && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.PHOutstandingQty > 0) //Outstanding
                                || (condition.POStatus == 2 && c.PHOutstandingQty <= 0) //Completed
                                )
                                 //&& (!condition.OrderClass.HasValue || c.PODetail.POHeader.OrderClass == condition.OrderClass)
                             && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.PODetail.POHeader.OrderClass))
                                 //&& (string.IsNullOrEmpty(condition.EndCustCode) || c.PODetail.POHeader.EndCustCode == condition.EndCustCode)
                             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.PODetail.POHeader.EndCustCode))
                             && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.PODetail.POHeader.Dept))
                                 //&& (string.IsNullOrEmpty(condition.Team) || c.PODetail.POHeader.Dept == condition.Team)
                             && (string.IsNullOrEmpty(condition.Factory) || c.PODetail.POHeader.Factory == condition.Factory)
                                 //&& (string.IsNullOrEmpty(condition.SuppRef) || c.SupplierReference == condition.SuppRef)
                             && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.SupplierReference))
                                 //&& (string.IsNullOrEmpty(condition.ColorCode) || c.ColorCode == condition.ColorCode)
                             && (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.ColorCode))
                             && (!condition.Flowup || (c.FlowupFlag != null && c.FlowupFlag != ""))
                             && (string.IsNullOrEmpty(condition.Coordinator) || c.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                             && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                                )
                             && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )
                             && (condition.ExftyDateFrom == DateTime.MinValue ||
                                   ((c.WOExftyDate) >= condition.ExftyDateFrom && (c.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                                )

                             orderby c.PONO, c.OrderLine, c.SKU
                             select c;

                    this.bindingSource1.DataSource = cc;
                    #endregion
                }
                else if (level == 5)
                {
                    #region Level 5
                    var cc = from c in context.POChangesMonitors
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                                 //&& (!(c.POColorSizeDetail.Pending ?? false))
                             && (c.POColorSizeDetail.VersionFlag ?? false)
                             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                                 //&& (string.IsNullOrEmpty(condition.Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == condition.Supplier)
                             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                             && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                             && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                )
                                 //&& (!condition.OrderClass.HasValue || c.POColorSizeDetail.PODetail.POHeader.OrderClass == condition.OrderClass)
                             && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POColorSizeDetail.PODetail.POHeader.OrderClass))
                                 //&& (string.IsNullOrEmpty(condition.EndCustCode) || c.POColorSizeDetail.PODetail.POHeader.EndCustCode == condition.EndCustCode)
                             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POColorSizeDetail.PODetail.POHeader.EndCustCode))
                             && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POColorSizeDetail.PODetail.POHeader.Dept))
                                 //&& (string.IsNullOrEmpty(condition.Team) || c.POColorSizeDetail.PODetail.POHeader.Dept == condition.Team)
                             && (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
                                 //&& (string.IsNullOrEmpty(condition.SuppRef) || c.POColorSizeDetail.SupplierReference == condition.SuppRef)
                             && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.POColorSizeDetail.SupplierReference))
                                 //&& (string.IsNullOrEmpty(condition.ColorCode) || c.POColorSizeDetail.ColorCode == condition.ColorCode)
                             && (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.POColorSizeDetail.ColorCode))
                             && (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                             && (!condition.Flowup || (c.POColorSizeDetail.FlowupFlag != null && c.POColorSizeDetail.FlowupFlag != ""))
                             && (condition.IssueDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                                )
                             && (condition.DeliveryDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                                )
                             && (condition.ExftyDateFrom == DateTime.MinValue ||
                                   ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                                )

                             orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
                             select c;

                    this.bindingSource1.DataSource = cc;
                    #endregion
                }
                //GridViewSort();
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }

        #endregion

        public void PrintPOPC(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCAnalysisPrintType printType, POPCPrintLevel printLevel)
        {
            GetReportData(printLevel);

            Common.PrintPOPCAnalysis(view, printType, printLevel, Condition);

        }

        #region Level 1
        private void Level1_WeeklyAmount_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCAnalysisPrintType.WeeklyAmount, POPCPrintLevel.OneA);
        }

        #endregion

        #region Level 2
        private void Level2_SuppPerformancebySupp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCAnalysisPrintType.SuppPerformance, POPCPrintLevel.TwoA);
        }
        private void Level2_SuppPerformancebyItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCAnalysisPrintType.SuppPerformance, POPCPrintLevel.TwoB);
        }

        #endregion


        #region Print - PO Form : Level 3

        private void Level3_Replacement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCAnalysisPrintType.Replacement, POPCPrintLevel.Three);
        }
        private void Level3_CreditCash_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCAnalysisPrintType.CreditCash, POPCPrintLevel.Three);
        }

        #endregion






    }
}
