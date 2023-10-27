using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;

namespace PH.POPC.UI.POPC
{
    public partial class PONotifyEnquiryForm : DevExpress.XtraEditors.XtraForm
    {
        public PONotifyEnquiryForm()
        {
            InitializeComponent();
            Condition = new PH.POPC.BO.POPCEnquiryCondition();
            InitValue();
        }
        private string Sender { get { return this.teSenders.Text.Trim(); } }
        private bool? IsInternal { get { return (bool?)this.cmbIsInternal.EditValue; } }

        private int? Classification { get { return (int?)this.cmbClassification.EditValue; } }
        private string Team { get { return this.teTeam.Text.Trim(); } }//Division

        private string EndCustCode { get { return this.teEndCustCode.Text.Trim(); } }
        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private string PONO { get { return this.tePOs.Text.Trim(); } }
        private string ProjectFrom { get { return this.teProjectNoFrom.Text.Trim(); } set { this.teProjectNoFrom.EditValue = value; } }
        private string ProjectTo { get { return this.teProjectNoTo.Text.Trim(); } set { this.teProjectNoTo.EditValue = value; } }
        //private string SuppRef { get { return this.teSuppRefs.Text.Trim(); } }

        private DateTime NotepadDateFrom { get { return this.deIssueFrom.DateTime; } set { if (value == DateTime.MinValue) this.deIssueFrom.EditValue = null; else this.deIssueFrom.EditValue = value; } }
        private DateTime NotepadDateTo { get { return this.deIssueTo.DateTime; } set { if (value == DateTime.MinValue)this.deIssueTo.EditValue = null; else this.deIssueTo.EditValue = value; } }

        public PH.POPC.BO.POPCEnquiryCondition Condition { get; set; }

        private void btnOK_Click(object sender, EventArgs e)
        {
            #region Date Time

            DateTime dt;
            if (NotepadDateFrom == DateTime.MinValue) NotepadDateFrom = NotepadDateTo;
            if (NotepadDateTo == DateTime.MinValue) NotepadDateTo = NotepadDateFrom;
            dt = NotepadDateFrom;
            if (NotepadDateFrom > NotepadDateTo)
            { NotepadDateFrom = NotepadDateTo; NotepadDateTo = dt; }

            #endregion

            #region Project

            if (string.IsNullOrEmpty(ProjectFrom)) ProjectFrom = ProjectTo;
            if (string.IsNullOrEmpty(ProjectTo)) ProjectTo = ProjectFrom;
            string s = ProjectFrom;
            if (string.Compare(ProjectFrom, ProjectTo) > 0)
            { ProjectFrom = ProjectTo; ProjectTo = s; }

            #endregion

            Condition.Sender = this.Sender;
            Condition.IsInternal = this.IsInternal;
            Condition.Classification = this.Classification;
            Condition.Team = this.Team;//Division

            Condition.EndCustCode = this.EndCustCode;
            Condition.Supplier = this.Supplier;
            Condition.PONO = this.PONO;

            Condition.ProjectFrom = this.ProjectFrom;
            Condition.ProjectTo = this.ProjectTo;

            Condition.IssueDateFrom = this.NotepadDateFrom;
            Condition.IssueDateTo = this.NotepadDateTo;

            this.DialogResult = DialogResult.OK;
        }

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
            //DataTable dtDept = new DataTable();
            //col = new DataColumn();
            //col.ColumnName = "Dept";
            //col.DataType = System.Type.GetType("System.String");
            //dtDept.Columns.Add(col);

            //table-PO
            DataTable dtPO = new DataTable();
            col = new DataColumn();
            col.ColumnName = "PONO";
            col.DataType = System.Type.GetType("System.String");
            dtPO.Columns.Add(col);

            //table-Sender
            DataTable dtSender = new DataTable();
            col = new DataColumn();
            col.ColumnName = "Sender";
            col.DataType = System.Type.GetType("System.String");
            dtSender.Columns.Add(col);

            //table-SuppRef
            //DataTable dtSuppRef = new DataTable();
            //col = new DataColumn();
            //col.ColumnName = "SuppRef";
            //col.DataType = System.Type.GetType("System.String");
            //dtSuppRef.Columns.Add(col);

            //table-Color
            //DataTable dtColor = new DataTable();
            //col = new DataColumn();
            //col.ColumnName = "Color";
            //col.DataType = System.Type.GetType("System.String");
            //dtColor.Columns.Add(col);

            #endregion

            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();

            PH.Platform.AuthMgr.BO.DataListHelper h = new PH.Platform.AuthMgr.BO.DataListHelper();
            var senders = h.GetUserList();
            foreach (var s in senders)
            {
                if (s.Expired ?? false) continue;
                if (string.IsNullOrEmpty(s.UserName)) continue;

                row = dtSender.NewRow();
                row["Sender"] = s.UserName;
                dtSender.Rows.Add(row);
            }
            this.teSenders.DataSource = dtSender;
            this.teSenders.DisplayMember = "Sender";


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

            //PO
            this.tePOs.DataSource = dtPO;
            this.tePOs.DisplayMember = "PONO";

            ////SuppRef
            //this.teSuppRefs.DataSource = dtSuppRef;
            //this.teSuppRefs.DisplayMember = "SuppRef";
            ////Color
            //this.teSenders.DataSource = dtColor;
            //this.teSenders.DisplayMember = "Color";
        }

    }
}