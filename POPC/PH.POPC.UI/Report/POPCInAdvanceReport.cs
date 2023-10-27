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
    public partial class POPCInAdvanceReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public POPCInAdvanceReport()
        {
            InitializeComponent();
            InitValue();
        }
        private string EndCustCode { get { return this.teEndCustCode.Text.Trim(); } }
        private string BrandName { get { return this.teBrandNames.Text.Trim(); } }

        private string Team { get { return this.teTeam.Text.Trim(); } }
        private string Coordinator { get { return this.teOfficer.Text.Trim(); } }

        private string LDStatus { get { return this.cmbStatus.Text.Trim(); } }

        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private string SuppRef { get { return this.teSuppRefs.Text.Trim(); } }

        private DateTime SuppddFrom { get { return this.deSuppddFrom.DateTime; } set { if (value == DateTime.MinValue) this.deSuppddFrom.EditValue = null; else this.deSuppddFrom.EditValue = value; } }
        private DateTime SuppddTo { get { return this.deSuppddTo.DateTime; } set { if (value == DateTime.MinValue)this.deSuppddTo.EditValue = null; else this.deSuppddTo.EditValue = value; } }

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

            //table-SuppRef
            DataTable dtSuppRef = new DataTable();
            col = new DataColumn();
            col.ColumnName = "SuppRef";
            col.DataType = System.Type.GetType("System.String");
            dtSuppRef.Columns.Add(col);

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

            //SuppRef
            this.teSuppRefs.DataSource = dtSuppRef;
            this.teSuppRefs.DisplayMember = "SuppRef";

        }

        private void GenerateCondition()
        {
            Condition = new PH.POPC.BO.POPCEnquiryCondition();
            #region Date Time

            DateTime dt;
            if (SuppddFrom == DateTime.MinValue) SuppddFrom = SuppddTo;
            if (SuppddTo == DateTime.MinValue) SuppddTo = SuppddFrom;
            dt = SuppddFrom;
            if (SuppddFrom > SuppddTo)
            { SuppddFrom = SuppddTo; SuppddTo = dt; }

            #endregion

            Condition.EndCustCode = this.EndCustCode;
            Condition.BrandName = this.BrandName;

            Condition.Team = this.Team;
            Condition.Coordinator = this.Coordinator;

            Condition.LDStatus = this.LDStatus;

            Condition.Supplier = this.Supplier;
            Condition.SuppRef = this.SuppRef;

            Condition.SuppddFrom = this.SuppddFrom;
            Condition.SuppddTo = this.SuppddTo;

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

                #region In advance

                var cc = from c in context.POInAdvances
                         where (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.EndCustomer))
                         && (string.IsNullOrEmpty(condition.BrandName) || c.BrandName == condition.BrandName)
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.Supplier))
                         && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.SuppRef))
                         && (string.IsNullOrEmpty(condition.LDStatus) || c.LDAppStatus == condition.LDStatus)
                         && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.Team))
                         && (string.IsNullOrEmpty(condition.Coordinator) || c.PurchaseOfficer == condition.Coordinator)

                         && (condition.SuppddFrom == DateTime.MinValue ||
                               ((c.StdCompleteDate) >= condition.SuppddFrom && (c.StdCompleteDate) < condition.SuppddTo.AddDays(1))
                            )
                         orderby c.EndCustomer, c.Supplier, c.SuppRef
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

        #region Print - PO Form & Shipment Detail

        private void btnQA_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.InAdvance);
        }
        private void btnSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.InAdvance);
        }
        private void btnSpec_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PrintPOPC(this.bandedGridView1, POPCPrintType.ItemSpec, POPCPrintLevel.InAdvance);
        }
        #endregion

    }
}
