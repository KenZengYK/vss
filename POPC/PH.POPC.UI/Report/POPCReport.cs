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
    public partial class POPCReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPCReport()
        {
            InitializeComponent();
            InitValue();
        }
        //int _level;

        private string Company
        {
            get
            {
                return this.teCompany.Text;
            }
        }
        private PH.POPC.BO.POPCSortBy SortBy { get { return (PH.POPC.BO.POPCSortBy)Convert.ToInt32(this.rgSortBy.EditValue); } }

        private int POStatus { get { return Convert.ToInt32(this.rgStatus.EditValue); } }
        private string EndCustCode { get { return this.teEndCustCode.Text.Trim(); } }
        private string Team { get { return this.teTeam.Text.Trim(); } }
        private string Factory { get { return Convert.ToString(this.teFactory.EditValue); } }

        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private string PONO { get { return this.tePOs.Text.Trim(); } }
        private string ProjectFrom { get { return this.teProjectNoFrom.Text.Trim(); } set { this.teProjectNoFrom.EditValue = value; } }
        private string ProjectTo { get { return this.teProjectNoTo.Text.Trim(); } set { this.teProjectNoTo.EditValue = value; } }
        private string SuppRef { get { return this.teSuppRefs.Text.Trim(); } }
        private string ColorCode { get { return this.teColors.Text.Trim(); } }
        private string Coordinator { get { return this.teOfficer.Text.Trim(); } }
        //private int? OrderClass { get { return (int?)this.OrderClassEditor.EditValue; } }
        private string OrderClass { get { return this.OrderClassEditor.Text; } }

        private bool Flowup { get { return Convert.ToBoolean(this.ceFlowup.Checked); } }


        private DateTime IssueDateFrom { get { return this.deIssueFrom.DateTime; } set { if (value == DateTime.MinValue) this.deIssueFrom.EditValue = null; else this.deIssueFrom.EditValue = value; } }
        private DateTime IssueDateTo { get { return this.deIssueTo.DateTime; } set { if (value == DateTime.MinValue)this.deIssueTo.EditValue = null; else this.deIssueTo.EditValue = value; } }
        private DateTime DeliveryDateFrom { get { return this.deDeliveryFrom.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryFrom.EditValue = null; else this.deDeliveryFrom.EditValue = value; } }
        private DateTime DeliveryDateTo { get { return this.deDeliveryTo.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryTo.EditValue = null; else this.deDeliveryTo.EditValue = value; } }
        private DateTime ExftyDateFrom { get { return this.deWOExftyFrom.DateTime; } set { if (value == DateTime.MinValue)this.deWOExftyFrom.EditValue = null; else this.deWOExftyFrom.EditValue = value; } }
        private DateTime ExftyDateTo { get { return this.deWOExftyTo.DateTime; } set { if (value == DateTime.MinValue)this.deWOExftyTo.EditValue = null; else  this.deWOExftyTo.EditValue = value; } }

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

            //table-Cust
            DataTable dtCust = new DataTable();
            col = new DataColumn();
            col.ColumnName = "Customer";
            col.DataType = System.Type.GetType("System.String");
            dtCust.Columns.Add(col);

            //table-Dept
            DataTable dtDept = new DataTable();
            col = new DataColumn();
            col.ColumnName = "Dept";
            col.DataType = System.Type.GetType("System.String");
            dtDept.Columns.Add(col);

            //table-PO
            DataTable dtPO = new DataTable();
            col = new DataColumn();
            col.ColumnName = "PONO";
            col.DataType = System.Type.GetType("System.String");
            dtPO.Columns.Add(col);

            //table-SuppRef
            DataTable dtSuppRef = new DataTable();
            col = new DataColumn();
            col.ColumnName = "SuppRef";
            col.DataType = System.Type.GetType("System.String");
            dtSuppRef.Columns.Add(col);

            //table-Color
            DataTable dtColor = new DataTable();
            col = new DataColumn();
            col.ColumnName = "Color";
            col.DataType = System.Type.GetType("System.String");
            dtColor.Columns.Add(col);

            #endregion


            this.teOfficer.Properties.Items.Clear();
            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            var aa = list.GetDataDictionary("PH.POPC.PurchaseOfficerEmail");
            foreach (var item in aa)
            {
                this.teOfficer.Properties.Items.Add(item.DataCode);
            }

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

            //Dept
            //PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            var depts = list.GetDataDictionary("PH.POPC.Dept");
            foreach (var item in depts)
            {
                teTeam.Properties.Items.Add(item.DataCode);
                //row = dtDept.NewRow();X
                //row["Dept"] = item.DataCode;
                //dtDept.Rows.Add(row);
            }
            //this.teTeam.DataSource = dtDept;
            //this.teTeam.DisplayMember = "Dept";

            //PO
            this.tePOs.DataSource = dtPO;
            this.tePOs.DisplayMember = "PONO";
            //SuppRef
            this.teSuppRefs.DataSource = dtSuppRef;
            this.teSuppRefs.DisplayMember = "SuppRef";
            //Color
            this.teColors.DataSource = dtColor;
            this.teColors.DisplayMember = "Color";
        }

        private void GenerateCondition(int level)
        {
            Condition = new PH.POPC.BO.POPCEnquiryCondition();
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

            if (ExftyDateFrom == DateTime.MinValue) ExftyDateFrom = ExftyDateTo;
            if (ExftyDateTo == DateTime.MinValue) ExftyDateTo = ExftyDateFrom;
            dt = ExftyDateFrom;
            if (ExftyDateFrom > ExftyDateTo)
            { ExftyDateFrom = ExftyDateTo; ExftyDateTo = dt; }

            #endregion

            #region Project

            if (string.IsNullOrEmpty(ProjectFrom)) ProjectFrom = ProjectTo;
            if (string.IsNullOrEmpty(ProjectTo)) ProjectTo = ProjectFrom;
            string s = ProjectFrom;
            if (string.Compare(ProjectFrom, ProjectTo) > 0)
            { ProjectFrom = ProjectTo; ProjectTo = s; }

            #endregion

            if (level != 3)
            {
                if (string.IsNullOrEmpty(EndCustCode) &&
                    string.IsNullOrEmpty(Team) &&
                    string.IsNullOrEmpty(Factory) &&
                    string.IsNullOrEmpty(Supplier) &&
                    string.IsNullOrEmpty(PONO) &&
                    string.IsNullOrEmpty(ProjectFrom) &&
                    string.IsNullOrEmpty(SuppRef) &&
                    string.IsNullOrEmpty(ColorCode) &&
                    string.IsNullOrEmpty(Coordinator) &&
                    string.IsNullOrEmpty(OrderClass) &&
                   (
                    IssueDateFrom == DateTime.MinValue &&
                    DeliveryDateFrom == DateTime.MinValue &&
                    ExftyDateFrom == DateTime.MinValue
                    ))
                {
                    MessageBox.Show("Must input a condition at least!");
                    return;
                }
            }

            Condition.SortBy = this.SortBy;
            Condition.Company = this.Company;
            Condition.POStatus = this.POStatus;
            Condition.EndCustCode = this.EndCustCode;
            Condition.Team = this.Team;
            Condition.Factory = this.Factory;
            Condition.Supplier = this.Supplier;
            Condition.PONO = this.PONO;
            Condition.ProjectFrom = this.ProjectFrom;
            Condition.ProjectTo = this.ProjectTo;
            Condition.SuppRef = this.SuppRef;
            Condition.ColorCode = this.ColorCode;
            Condition.Coordinator = this.Coordinator;
            Condition.OrderClass = this.OrderClass;
            Condition.Flowup = this.Flowup;

            Condition.IssueDateFrom = this.IssueDateFrom;
            Condition.IssueDateTo = this.IssueDateTo;
            Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            Condition.DeliveryDateTo = this.DeliveryDateTo;
            Condition.ExftyDateFrom = this.ExftyDateFrom;
            Condition.ExftyDateTo = this.ExftyDateTo;

            //this.DialogResult = DialogResult.OK;
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
                                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                             && (c.VersionFlag ?? false)
                             && c.PODetail.POHeader.POType == (int)POType.PO
                             && (c.PODetail.POHeader.Flag == null || c.PODetail.POHeader.Flag == "") && (!(c.Pending ?? false))
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
                else if (level == 2)
                {
                    #region Level 2
                    var cc = from c in context.POChangesMonitors
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO)) && (!(c.POColorSizeDetail.Pending ?? false))
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
                else if (level == 3)
                {
                    #region Level 3
                    var cc = from c in context.PORCs
                             where c.Company == condition.Company
                                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO)) && (!(c.POColorSizeDetail.Pending ?? false))
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

                             orderby c.PONO, c.OrderLine, c.SKU, c.RCNO
                             select c;

                    //calc [InvoiceAmount] = Supp Qty * Unit Price
                    foreach (var c in cc)
                    {
                        if (!c.InvoiceAmount.HasValue)
                            c.InvoiceAmount = Convert.ToDouble(c.SuppRCQty * c.Price);
                    }

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
                             && (c.PODetail.POHeader.Flag == null || c.PODetail.POHeader.Flag == "") && (!(c.Pending ?? false))
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
                             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO)) && (!(c.POColorSizeDetail.Pending ?? false))
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

        public void PrintPOPC(DevExpress.XtraGrid.Views.BandedGrid.BandedGridView view, POPCPrintType printType, POPCPrintLevel printLevel)
        {
            GetReportData(printLevel);

            Common.PrintPOPC(view, printType, printLevel);

        }


        #region Print - PO Form : Level 1

        private void Level1_POPCForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.OneA);
        }
        private void Level1_SupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneA);

        }

        private void Level1_Level1aSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneA);

        }
        private void Level1_Level1Awith_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //SetReportTtlLeftItem(true);
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneA);
        }
        private void Level1_Level1Awithout_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //SetReportTtlLeftItem(false);
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneA);
        }
        private void Level1_LevelB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneB);
        }
        private void Level1_Supplement2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneB);
        }

        #endregion

        #region Print - PO Form : Level 2

        private void Level2_FrontPage_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.TwoA);
        }
        private void Level2_SupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoA);
        }
        private void Level2_L2Supplement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoB);

        }
        private void Level2_Level2a_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoA);

        }
        private void Level2_Level2b_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoB);
        }

        //---------------Change-----------------------
        private void Level2_FrontPage_Changed_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.TwoAChange);
        }
        private void Level2_SupplementSheet_Changed_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoAChange);
        }

        private void Level2_Level2aC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoAChange);
        }
        private void Level2_Level2bC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoBChange);
        }
        private void Level2_L2SupplementC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoBChange);
        }
        private void Level2_ItemChanged_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.ItemChanged, POPCPrintLevel.None);

        }

        #endregion

        #region Print - PO Form : Level 3

        private void Level3_POPCForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Three);
        }
        private void Level3_Level_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Three);

        }
        private void Level3_SupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Three);

        }

        #endregion

        #region Print - PO Form : Level 4
        private void Level4_POPCForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Four);
        }
        private void Level4_SupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Four);
        }

        private void Level4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Four);

        }
        #endregion

        #region Print - PO Form : Level 5

        private void Level5_POPCDependentForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
        private void Level5_POPCInDependentForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Five2);
        }
        private void Level5_SupplementDependentSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Five1);
        }
        private void Level5_SupplementIndependentSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Five2);
        }
        private void Level5_Level1aSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneA);

        }
        private void Level5_Supplement2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneB);
        }

        private void Level5_Leve51A_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Five1);
        }
        private void Level5_Leve52A_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Five2);
        }
        private void Level5_Leve51B_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.InvoiceMatching, POPCPrintLevel.Five1);
        }
        private void Level5_Leve52B_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.PrintPOPC(this.bandedGridView1, POPCPrintType.InvoiceMatching, POPCPrintLevel.Five2);

        }
        #endregion



    }
}
