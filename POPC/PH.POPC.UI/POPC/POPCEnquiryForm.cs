using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO;
using PH.POPC.BO;


namespace PH.POPC.UI.POPC
{
    public partial class POPCEnquiryForm : DevExpress.XtraEditors.XtraForm
    {
        public POPCEnquiryForm(int level)
        {
            InitializeComponent();
            this.Width = 860;

            _level = level;

            rgSortBy.Properties.Items.RemoveAt(1);
            rgSortBy.Properties.Items.RemoveAt(1);

            dePointDestFrom.EditValue = DateTime.Now.Date.AddDays(150);
            teFactory.SelectedIndex = 0;
            //if (_level == 2) //Level 3
            //{
            groupControl6.Text = "TF2 Rcv'g End Pt (Item Standby) as at";
            labelControl27.Text = "";
            labelControl26.Visible = false;
            dePointDestTo.Visible = false;
            //}
            //else
            //{
            //    groupControl6.Text = "ETA Pt.of Dest";
            //    labelControl27.Text = "From";
            //    labelControl26.Text = "To";
            //    labelControl26.Visible = true;
            //    dePointDestTo.Visible = true;
            //}

            cbDashborad.Enabled = true;
            cbDashborad.Properties.Items.Clear();
            cbDashborad.Properties.Items.Add("");
            if (_level == 1) //Level 2
            {
                cbDashborad.Properties.Items.Add("2.2# Red data of Bulk Color Not yet Appv.");
            }
            else if (_level == 2) //Level 3
            {
                cbDashborad.Properties.Items.Add("3.1# Red data for Item Standby behind/over ahead");
                cbDashborad.Properties.Items.Add("3.2# Red data for Late Shpt");
                cbDashborad.Properties.Items.Add("3.3# Split Shpt Mde");
            }
            else
            {
                cbDashborad.Enabled = false;
            }

            Condition = new PH.POPC.BO.POPCEnquiryCondition();

            InitValue();

        }
        public POPCEnquiryForm(int level, POPCLevel5Form l5Form)
            : this(level)
        {
            this._l5Form = l5Form;
        }

        private POAdviceNotePOListForm _OutstandingAdviceNoteForm;
        public POPCEnquiryForm(int level, POAdviceNotePOListForm AOutstandingAdviceNoteForm)
            : this(level)
        {
            _OutstandingAdviceNoteForm = AOutstandingAdviceNoteForm;
        }


        #region Normal

        #region Fields

        int _level;
        //bool _isPart1A;// true: Part1A;  false: Part2

        private string Company
        {
            get
            {
                return this.teCompany.Text;
            }
        }
        private PH.POPC.BO.POPCSortBy SortBy { get { return (PH.POPC.BO.POPCSortBy)Convert.ToInt32(this.rgSortBy.EditValue); } }

        private int POStatus { get { return Convert.ToInt32(this.rgStatus.EditValue); } }
        private int POStatus2 { get { return Convert.ToInt32(this.rgStatus2.EditValue); } }
        private int POStatus3 { get { return Convert.ToInt32(this.rgStatus3.EditValue); } }
        private string EndCustCode { get { return this.teEndCustCode.Text.Trim(); } }
        private string Team { get { return this.teTeam.Text.Trim(); } }
        private string Factory { get { return Convert.ToString(this.teFactory.EditValue); } }
        private string MaterialStandby { get { return this.rgMaterialStandby.EditValue.ToString(); } } //由David加入 2022-07-22

        private string Supplier { get { return this.teSupplier.Text.Trim(); } }
        private string Supplier2 { get { return this.teSupplier2.Text.Trim(); } }
        private string Supplier3 { get { return this.teSupplier3.Text.Trim(); } }

        //由David增加 2022-06-27
        private string SupplierShortName
        {
            get
            {
                if (teSupplier2.Text.Length < 4)
                {
                    return null;
                }

                BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
                var obj = db.SupplierProfiles.FirstOrDefault(p => p.ERPSupplier == teSupplier2.Text.Substring(0, 4));
                return obj == null ? "" : obj.ShortName;
            }
        }

        private string PONO { get { return this.tePOs.Text.Trim(); } }
        private string PONO2 { get { return this.tePO2s.Text.Trim(); } }
        private string Note2 { get { return this.teNotes.Text.Trim(); } }
        private string ProjectFrom { get { return this.teProjectNoFrom.Text.Trim(); } set { this.teProjectNoFrom.EditValue = value; } }
        private string ProjectTo { get { return this.teProjectNoTo.Text.Trim(); } set { this.teProjectNoTo.EditValue = value; } }
        private string SuppRef { get { return this.teSuppRefs.Text.Trim(); } }
        private string ColorCode { get { return this.teColors.Text.Trim(); } }
        private string Coordinator { get { return this.teOfficer.Text.Trim(); } }
        //private int? OrderClass { get { return (int?)this.OrderClassEditor.EditValue; } }
        private string OrderClass { get { return this.OrderClassEditor.Text; } }

        private bool Flowup { get { return Convert.ToBoolean(this.ceFlowup.Checked); } }
        private string MaterialGroup { get { return this.teMatGroups.Text.Trim(); } }

        private DateTime IssueDateFrom { get { return this.deIssueFrom.DateTime; } set { if (value == DateTime.MinValue) this.deIssueFrom.EditValue = null; else this.deIssueFrom.EditValue = value; } }
        private DateTime IssueDateTo { get { return this.deIssueTo.DateTime; } set { if (value == DateTime.MinValue)this.deIssueTo.EditValue = null; else this.deIssueTo.EditValue = value; } }
        private DateTime DeliveryDateFrom { get { return this.deDeliveryFrom.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryFrom.EditValue = null; else this.deDeliveryFrom.EditValue = value; } }
        private DateTime DeliveryDateTo { get { return this.deDeliveryTo.DateTime; } set { if (value == DateTime.MinValue)this.deDeliveryTo.EditValue = null; else this.deDeliveryTo.EditValue = value; } }
        private DateTime ExftyDateFrom { get { return this.deWOExftyFrom.DateTime; } set { if (value == DateTime.MinValue)this.deWOExftyFrom.EditValue = null; else this.deWOExftyFrom.EditValue = value; } }
        private DateTime ExftyDateTo { get { return this.deWOExftyTo.DateTime; } set { if (value == DateTime.MinValue)this.deWOExftyTo.EditValue = null; else  this.deWOExftyTo.EditValue = value; } }

        private DateTime PointDestFrom { get { return this.dePointDestFrom.DateTime; } set { if (value == DateTime.MinValue)this.dePointDestFrom.EditValue = null; else this.dePointDestFrom.EditValue = value; } }
        private DateTime PointDestTo { get { return this.dePointDestTo.DateTime; } set { if (value == DateTime.MinValue)this.dePointDestTo.EditValue = null; else  this.dePointDestTo.EditValue = value; } }





        public PH.POPC.BO.POPCEnquiryCondition Condition { get; set; }
        #endregion

        #region Functions

        private void btnOK_Click(object sender, EventArgs e)
        {
            GenernalCondition();
        }
        private void GenernalCondition()
        {
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

            if (PointDestFrom == DateTime.MinValue) PointDestFrom = PointDestTo;
            if (PointDestTo == DateTime.MinValue) PointDestTo = PointDestFrom;
            dt = PointDestFrom;
            if (PointDestFrom > PointDestTo)
            { PointDestFrom = PointDestTo; PointDestTo = dt; }

            #endregion

            #region Project

            if (string.IsNullOrEmpty(ProjectFrom)) ProjectFrom = ProjectTo;
            if (string.IsNullOrEmpty(ProjectTo)) ProjectTo = ProjectFrom;
            string s = ProjectFrom;
            if (string.Compare(ProjectFrom, ProjectTo) > 0)
            { ProjectFrom = ProjectTo; ProjectTo = s; }

            #endregion

            if (string.IsNullOrEmpty(tePOs.Text.Trim()) &&
                (rgStatus.EditValue.ToString() == "2" || rgStatus.EditValue.ToString() == "0")) //王生要求 PO Status选择的是Completed或All时，提示用户, 由David加入 2022-09-15
            {
                if (string.IsNullOrEmpty(ProjectFrom) &&
                    IssueDateFrom == DateTime.MinValue &&
                    DeliveryDateFrom == DateTime.MinValue &&
                    ExftyDateFrom == DateTime.MinValue &&
                    PointDestFrom == DateTime.MinValue)
                {
                    MessageBox.Show("Must input a condition at 2nd step at least!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }

            if (_level != 3 && _level != 5)
            {
                if (string.IsNullOrEmpty(EndCustCode) &&
                    string.IsNullOrEmpty(Team) &&
                    string.IsNullOrEmpty(Factory) &&
                    string.IsNullOrEmpty(Supplier) &&
                    string.IsNullOrEmpty(Supplier3) &&
                    string.IsNullOrEmpty(PONO) &&
                    string.IsNullOrEmpty(ProjectFrom) &&
                    string.IsNullOrEmpty(SuppRef) &&
                    string.IsNullOrEmpty(ColorCode) &&
                    string.IsNullOrEmpty(Coordinator) &&
                    string.IsNullOrEmpty(OrderClass) &&
                    string.IsNullOrEmpty(MaterialGroup) &&
                   (
                    IssueDateFrom == DateTime.MinValue &&
                    DeliveryDateFrom == DateTime.MinValue &&
                    ExftyDateFrom == DateTime.MinValue &&
                    PointDestFrom == DateTime.MinValue
                    ))
                {
                    MessageBox.Show("Must input a condition at least!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }

            Condition.SortBy = this.SortBy;
            Condition.Company = this.Company;
            Condition.POStatus = this.POStatus;
            Condition.MaterialStandby = this.MaterialStandby; //由David加入 2022-07-22
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
            Condition.MaterialGroup = this.MaterialGroup;

            Condition.IssueDateFrom = this.IssueDateFrom;
            Condition.IssueDateTo = this.IssueDateTo;
            Condition.DeliveryDateFrom = this.DeliveryDateFrom;
            Condition.DeliveryDateTo = this.DeliveryDateTo;
            Condition.ExftyDateFrom = this.ExftyDateFrom;
            Condition.ExftyDateTo = this.ExftyDateTo;
            Condition.PointDestFrom = this.PointDestFrom;
            Condition.PointDestTo = this.PointDestTo;

            //王生要求太Our production Site中加入一个选项All, 所以Factory需要特殊处理, 由David加入以下代码 2022-06-02
            if (Condition.Factory == "All")
            {
                Condition.Factory = ""; //为空时，相当于Factory这个条件没有，即是查所有Factory的记录
            }

            //由David加入以下查询条件 2022-06-02
            Condition.Level2LabDipRejStatus = chkLabDipStatus.Checked;
            Condition.Level2BulkColorRejStatus = chkBulkColorStatus.Checked;
            Condition.Level2OtherLabTestRejStatus = chkOtherLabTest.Checked;

            Condition.Dashboard = cbDashborad.Text; //由David加入 2022-08-10



            #region Advice Note
            if (_level == 5)
            //if (this.tcQuery.SelectedTabPage == this.tpInvoice)
            {
                Condition.POStatus = this.POStatus2;

                this.gvAdviceNote.UpdateCurrentRow();
                this.gvAdviceNote.PostEditor();
                this.gvAdviceNote.HideEditor();

                var ans = this.bindingSource1.DataSource as IEnumerable<PH.POPC.BO.POAdviceNote>;
                if (ans == null)
                {
                    Condition.AdviceNote = "";
                    //MessageBox.Show("please get advice note by supplier first!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                string supp = "";
                string an = "";

                Hashtable ht = new Hashtable();

                foreach (var item in ans)
                {
                    if (!item.Choose) continue;

                    if (!ht.Contains(item.Supplier))
                    {
                        ht.Add(item.Supplier, item.Supplier);
                        supp += item.Supplier + ",";
                    }
                    an += item.AdviceNote + ",";
                }
                //if (string.IsNullOrEmpty(an))
                //{
                //    MessageBox.Show("select a advice note at least!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //    return;
                //}

                Condition.Supplier = supp;
                Condition.AdviceNote = an;
                Condition.ComTypeI = this._part1Option;
                Condition.InvoiceDate = this.deInvoiceDate.DateTime;
                Condition.InvoiceNo = this.teInvoiceNo.Text;


                Condition.SortBy = PH.POPC.BO.POPCSortBy.SuppDeliveryDate;
            }

            #endregion
            else if (_level == 5 + 3) //Level 5 Part 3
            {
                Condition.POStatus = this.POStatus3;
                Condition.Supplier = this.Supplier3;
            }

            if (_level != 5)
                this.DialogResult = DialogResult.OK;
        }

        private void InitValue()
        {
            InitControlEnable();

            if (_level == 5) InitValueInvoice();
            else if (_level == 5 + 3) InitValueLevel5Part3();
            else InitValueNormal();
        }
        private void InitValueNormal()
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

            //table-material group
            DataTable dtGroup = new DataTable();
            col = new DataColumn();
            col.ColumnName = "MaterialGroup";
            col.DataType = System.Type.GetType("System.String");
            dtGroup.Columns.Add(col);

            #endregion

            #region Purchase Officer

            this.teOfficer.Properties.Items.Clear();
            PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            var aa = list.GetDataDictionary("PH.POPC.PurchaseOfficerEmail");
            foreach (var item in aa)
            {
                this.teOfficer.Properties.Items.Add(item.DataCode);
            }
            #endregion

            #region Supplier

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

            //this.teSupplier2.DataSource = dtSupplier;
            //this.teSupplier2.DisplayMember = "Supplier";
            #endregion

            #region EndCustCode

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
            #endregion

            //#region Dept

            ////PH.POPC.BO.DicList list = new PH.POPC.BO.DicList();
            //var depts = list.GetDataDictionary("PH.POPC.Dept");
            //foreach (var item in depts)
            //{
            //    teTeam.Properties.Items.Add(item.DataCode);
            //    //row = dtDept.NewRow();X
            //    //row["Dept"] = item.DataCode;
            //    //dtDept.Rows.Add(row);
            //}
            ////this.teTeam.DataSource = dtDept;
            ////this.teTeam.DisplayMember = "Dept";
            //#endregion

            ////PO
            //this.tePOs.DataSource = dtPO;
            //this.tePOs.DisplayMember = "PONO";


            //SuppRef
            this.teSuppRefs.DataSource = dtSuppRef;
            this.teSuppRefs.DisplayMember = "SuppRef";
            //Color
            this.teColors.DataSource = dtColor;
            this.teColors.DisplayMember = "Color";

            #region Material Group


            //var mm = detaillist.CurrentDataContext.MaterialTypes.Select(p => p.MaterialGroup).Distinct().OrderBy(p => p);
            //this.teMatGroups.Properties.Items.Clear();
            //this.teMatGroups.Properties.Items.AddRange(mm.ToList());


            PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var MaterialGroupList = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.MIDc.MaterialGroup").OrderBy(p => p.DataName).ToList();
            MaterialGroupList.Insert(0, null);
            teMatGroups.Properties.DataSource = MaterialGroupList;
            teMatGroups.Properties.ValueMember = "DataName";
            teMatGroups.Properties.DisplayMember = "DataName";


            //Field
            POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
            var FieldList = db.Fields.OrderBy(p => p.SortID).ToList();
            FieldList.Insert(0, null);
            teTeam.Properties.DataSource = FieldList;
            teTeam.Properties.ValueMember = "Code";
            teTeam.Properties.DisplayMember = "Code";


            //var mm = (from m in detaillist.CurrentDataContext.MaterialTypes
            //          orderby m.MaterialGroup
            //          select new { m.MaterialGroup }).Distinct();

            //foreach (var m in mm)
            //{
            //    if (string.IsNullOrEmpty(m.MaterialGroup)) continue;

            //    row = dtGroup.NewRow();
            //    row["MaterialGroup"] = m.MaterialGroup;
            //    dtGroup.Rows.Add(row);
            //}


            //this.teMatGroups.DataSource = dtGroup;
            //this.teMatGroups.DisplayMember = "MaterialGroup";

            #endregion

        }

        private void InitControlEnable()
        {
            //if (this._level == 5)//Class Code
            //{
            //    this.rgStatus.Visible = this.lblStatus.Visible = false;
            //    this.lblColor.Visible = this.teColors.Visible = false;
            //    this.panel3.Visible = this.panelExfty.Visible = false;
            //}

            this.tcQuery.SelectedTabPage = (this._level == 5) ? this.tpInvoice : ((this._level == 5 + 3) ? this.tpLevel5Part3 : this.tpNormal);

            this.tcQuery.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;


            if (this._level == 5 || this._level == 5 + 3)
                this.AcceptButton = null;
        }

        #endregion

        #endregion

        #region Delivery Note

        #region Fields

        private PH.POPC.BO.CompareTypeI _part1Option
        {
            get
            {
                int i = Convert.ToInt32(this.rgPart1.EditValue);
                return (PH.POPC.BO.CompareTypeI)i;
            }
        }
        private DataTable _dtPO, _dtDelNote;
        private PH.BasicInfo.BO.SupplierProfile _suppProfile;
        private POPCLevel5Form _l5Form;
        private List<PH.POPC.BO.InvoiceUnitQty> _invUnitQtys;
        private string _currency
        {
            get
            {
                return (this._suppProfile != null) ? this._suppProfile.Currency : "";
            }
        }
        protected decimal? POPCTtlQty
        {
            get
            {
                if (_invUnitQtys == null) return null;

                decimal qty = 0;
                foreach (var a in _invUnitQtys)
                {
                    qty += a.POPCQty ?? 0;
                }

                string sQty = string.Format("{0:0.#####}", qty);

                qty = Convert.ToDecimal(sQty);

                return qty;
            }
        }
        protected decimal? POPCTtlAmount
        {
            get
            {
                if (_invUnitQtys == null) return null;

                decimal amount = 0;
                foreach (var a in _invUnitQtys)
                {
                    amount += a.POPCAmount ?? 0;
                }

                string sAmount = string.Format("{0:0.#####}", amount);

                amount = Convert.ToDecimal(sAmount);

                return amount;
            }
        }

        protected decimal? POPCVATTtlAmount //由David加入 2022-06-21
        {
            get
            {
                if (_invUnitQtys == null) return null;

                decimal VATAmount = 0;
                foreach (var a in _invUnitQtys)
                {
                    VATAmount += a.POPCVATAmount ?? 0;
                }

                string sAmount = string.Format("{0:0.#####}", VATAmount);

                VATAmount = Convert.ToDecimal(sAmount);

                return VATAmount;
            }
        }

        private IEnumerable<PH.POPC.BO.POAdviceNote> _DNs;
        private bool SingleUnit { get { return Convert.ToBoolean(this.rgUnitDependent.EditValue); } }
        private bool AllMultiUnitMatching
        {
            get
            {
                if (SingleUnit) return false;

                bool b = false;
                foreach (var item in _invUnitQtys)
                {
                    if (!(item.Validation ?? false))
                    {
                        b = false;
                        break;
                    }
                    else
                        b = true;
                }
                return b;
            }
        }



        #endregion

        #region Menthods

        private void InitValueInvoice()
        {
            this.Text = "POPC Invoice Matching...";
            InitEntranceKey();

            #region Table

            //table-Supplier
            DataTable dtSupplier = new DataTable();
            DataColumn col;
            DataRow row;

            col = new DataColumn();
            col.ColumnName = "Supplier";
            col.DataType = System.Type.GetType("System.String");
            dtSupplier.Columns.Add(col);


            //table-PO
            _dtPO = new DataTable();
            col = new DataColumn();
            col.ColumnName = "PONO";
            col.DataType = System.Type.GetType("System.String");
            _dtPO.Columns.Add(col);


            //table-Delivery Note
            _dtDelNote = new DataTable();
            col = new DataColumn();
            col.ColumnName = "AdviceNote";
            col.DataType = System.Type.GetType("System.String");
            _dtDelNote.Columns.Add(col);

            #endregion

            #region Supplier

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

            this.teSupplier2.DataSource = dtSupplier;
            this.teSupplier2.DisplayMember = "Supplier";

            #endregion

            #region Validation

            InvddValidation(DateTime.MinValue);
            InvNoValidation("");
            //CurrValidation("");
            InvQtyValidation(null, 0);
            //InvAmountValidation(null, 0);
            SuppValidation("");

            this.btnBack.Enabled = false;
            this.btnNext.Enabled = true;
            this.btnGotoPart2.Visible = false;

            #endregion

        }
        private void InitEntranceKey()
        {
            this.tcQuery.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;

            this.tcInvEntranceKey.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this.tcInvEntranceKey.SelectedTabPage = this.tp1;

            this.btnBack.Enabled = false;
            //this.btnBack.Visible = false;
            this.btnNext.Enabled = true;

            this.teSupplier2.TabIndex = 0;
            this.teSupplier2.Focus();
        }

        private void GetSuppProfile()
        {
            string[] supps = GetAdviceNoteSupps(this.Supplier2);

            PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
            list.CurrentDataContext.CommandTimeout = 1000;
            _suppProfile = (from a in list.CurrentDataContext.SupplierProfiles
                            where (string.IsNullOrEmpty(this.Supplier2) || supps.Contains(a.ERPSupplier))
                            select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
        }
        private void GetPONOsBySupp()
        {
            PH.POPC.BO.POAdviceNoteList list = new PH.POPC.BO.POAdviceNoteList();
            list.CurrentDataContext.CommandTimeout = 1000;
            _dtPO.Rows.Clear();
            DataRow row;

            string[] supps = GetAdviceNoteSupps(this.Supplier2);
            var aa = list.GePONOs(supps, this.POStatus2);

            foreach (var a in aa)
            {
                if (string.IsNullOrEmpty(a) || string.IsNullOrEmpty(a.Trim())) continue;

                row = _dtPO.NewRow();
                row["PONO"] = a;
                _dtPO.Rows.Add(row);
            }

            this.tePO2s.DataSource = _dtPO;
            this.tePO2s.DisplayMember = "PONO";

        }
        private void GetDNsBySupp()
        {
            PH.POPC.BO.POAdviceNoteList list = new PH.POPC.BO.POAdviceNoteList();
            list.CurrentDataContext.CommandTimeout = 1000;
            _dtDelNote.Rows.Clear();
            DataRow row;

            string[] supps = GetAdviceNoteSupps(this.Supplier2);
            var aa = list.GetDNs(supps, this.POStatus2);

            foreach (var a in aa)
            {
                if (string.IsNullOrEmpty(a) || string.IsNullOrEmpty(a.Trim())) continue;

                row = _dtDelNote.NewRow();
                row["AdviceNote"] = a;
                _dtDelNote.Rows.Add(row);
            }

            this.teNotes.DataSource = _dtDelNote;
            this.teNotes.DisplayMember = "AdviceNote";

        }

        private void GetPOPCValue()
        {
            //if (_l5Form != null)
            //{
            //    _l5Form.EnquiryPOPC(this.Condition);
            //    _invUnitQtys = _l5Form.GetSumQtyByUnit();

            //    //this.invoiceUnitQtyBindingSource.DataSource = _invUnitQtys;
            //    this.invoiceUnitQtyBindingSource.DataSource = _l5Form.GetSumQtyByUnit1();
            //}
            //else
            if (_OutstandingAdviceNoteForm != null)
            {
                _OutstandingAdviceNoteForm.EnquiryPOPC(this.Condition);
                this.invoiceUnitQtyBindingSource.DataSource = _OutstandingAdviceNoteForm.GetSumQtyByUnit1();
            }



        }


        private void btnFilterAdviceNote_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrEmpty(this.Supplier2) && string.IsNullOrEmpty(this.PONO2) && string.IsNullOrEmpty(this.Note2))
            //{
            //    MessageBox.Show("please input supplier or PO No, Del. Note.");
            //    //this.teSupplier2.Focus();
            //    return;
            //}

            //string[] suppliers = GetAdviceNoteSupps(this.Supplier2);
            ////if (suppliers.Length > 1)
            ////{
            ////    MessageBox.Show("Support only one supplier.");
            ////    this.teSupplier2.Focus();
            ////    return;
            ////}

            //string[] pos = GetAdviceNoteSupps(this.PONO2);
            //string[] notes = GetAdviceNoteSupps(this.Note2);

            //InitAdviceDataSource(suppliers, pos, notes);
            this.Cursor = Cursors.WaitCursor;
            try
            {
                FilteringDN(this.PONO2, this.Note2);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }
        private void InitAdviceDataSource(string[] suppliers, string[] pos, string[] notes)
        {
            //string[] suppliers = GetAdviceNoteSupps(this.Supplier2);

            PH.POPC.BO.POAdviceNoteList list = new PH.POPC.BO.POAdviceNoteList();

            this.gcAdviceNote.DataSource = null;
            _DNs = list.GetPOAdviceNotesBySupp(suppliers, pos, notes, this.POStatus2);
            this.bindingSource1.DataSource = _DNs;
            this.gcAdviceNote.DataSource = this.bindingSource1;
        }
        private string[] GetAdviceNoteSupps(string supp)
        {
            if (!string.IsNullOrEmpty(supp)) supp = supp.Trim();
            string[] ss = supp.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            string[] suppliers = new string[ss.Length];
            for (int i = 0; i < ss.Length; i++)
            {
                string s = ss[i].Trim();
                suppliers[i] = s;
            }
            return suppliers;
        }


        //no use now
        private void btnINV2DN_Click(object sender, EventArgs e)
        {
            Condition.ComTypeI = PH.POPC.BO.CompareTypeI.INV2DN;
            GenernalCondition();
        }
        private void btnINV2DNs_Click(object sender, EventArgs e)
        {
            Condition.ComTypeI = PH.POPC.BO.CompareTypeI.INV2DNs;
            GenernalCondition();
        }
        private void btnINVs2DN_Click(object sender, EventArgs e)
        {
            Condition.ComTypeI = PH.POPC.BO.CompareTypeI.INVs2DN;
            GenernalCondition();
        }

        private void riceChoose_CheckedChanged(object sender, EventArgs e)
        {
            ChooseOneDN();
        }
        private void ChooseOneDN()
        {
            if (_part1Option != PH.POPC.BO.CompareTypeI.INV2DN) return;

            this.gvAdviceNote.PostEditor();
            this.gvAdviceNote.UpdateCurrentRow();
            PH.POPC.BO.POAdviceNote currDN = this.bindingSource1.Current as PH.POPC.BO.POAdviceNote;
            if (currDN == null) return;


            this.gvAdviceNote.BeginDataUpdate();
            try
            {
                // Obtain the number of data rows. 
                int dataRowCount = this.gvAdviceNote.DataRowCount;
                // Traverse data rows and change the Price field values. 
                for (int i = 0; i < dataRowCount; i++)
                {
                    PH.POPC.BO.POAdviceNote dn = this.gvAdviceNote.GetRow(i) as PH.POPC.BO.POAdviceNote;
                    if (dn == null || dn.AdviceNote == currDN.AdviceNote) continue;
                    if (dn.Choose)
                        dn.Choose = false;

                }

            }
            finally { this.gvAdviceNote.EndDataUpdate(); }

            //var ans = this.bindingSource1.DataSource as IEnumerable<PH.POPC.BO.POAdviceNote>;

            //Hashtable ht = new Hashtable();

            //int i = 0;
            //foreach (var item in ans)
            //{
            //    if (!item.Choose) continue;

            //    ++i;
            //}

            //btnINV2DN.Enabled = i == 1;
            //btnINV2DNs.Enabled = i > 1;
            //btnINVs2DN.Enabled = i == 1;
        }


        private void btnBack_Click(object sender, EventArgs e)
        {
            PreviousAction();
        }
        private void btnNext_Click(object sender, EventArgs e)
        {
            NextAction();
        }

        private void PreviousAction()
        {
            this.Width = 860;
            if (this.tcInvEntranceKey.SelectedTabPage == this.tp2)
            {
                this.tcInvEntranceKey.SelectedTabPage = this.tp1;

                this.btnBack.Text = "<< Previous";
                this.btnNext.Text = "Next >>";
            }
            else if (this.tcInvEntranceKey.SelectedTabPage == this.tp3)
            {
                this.tcInvEntranceKey.SelectedTabPage = this.tp2;

                this.btnNext.Location = new Point(148, 4);
                this.btnNext.Size = new Size(87, 30);

                this.btnBack.Text = "<< Previous";
                this.btnNext.Text = "Confirm";
            }

            this.btnBack.Enabled = this.tcInvEntranceKey.SelectedTabPage != this.tp1;
            this.btnNext.Enabled = true;
            this.btnGotoPart2.Visible = this.tcInvEntranceKey.SelectedTabPage == this.tp3;

            int DeskWidth = Screen.PrimaryScreen.Bounds.Width;
            int DeskHeight = Screen.PrimaryScreen.Bounds.Height;
            this.Left = (DeskWidth - this.Width) / 2;
            this.Top = (DeskHeight - this.Height) / 2;
        }
        private void NextAction()
        {
            this.Width = 860;

            //this.lbApplyTo1.Text = this.lbApplyTo2.Text = _part1Option == PH.POPC.BO.CompareTypeI.INV2DN ? "Part 1:-\r\n    1.1 Invoice Dependent - Single Advice Note"
            //    : (_part1Option == PH.POPC.BO.CompareTypeI.INV2DNs ? "Part 1:-\r\n    1.2 Invoice Dependent - Multiple Advice Note"
            //    : "Part 2:-\r\n    2.0 Advice Note Dependent - Multiple Invoice");

            this.lbSupp1.Text = this.lbSupp2.Text = this.Supplier2.Replace(',', ' ');

            this.lbSupp1.Text = this.lbSupp2.Text = this.lbSupp2.Text + "    " + this.SupplierShortName; //由David加入 2022-06-27

            #region Page 1

            if (this.tcInvEntranceKey.SelectedTabPage == this.tp1)
            {
                if (deInvoiceDate.EditValue == null)
                {
                    MessageBox.Show("Pls input the Invoice dd", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    deInvoiceDate.Focus();
                    return;
                }

                if (teInvoiceNo.EditValue == null)
                {
                    MessageBox.Show("Pls input the Invoice No.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    teInvoiceNo.Focus();
                    return;
                }



                //if (this.dxValidationProvider1.Validate(this.teSupplier2))
                {
                    string[] suppliers = GetAdviceNoteSupps(this.Supplier2);
                    if (suppliers.Length == 0)
                    {
                        MessageBox.Show("Supplier cannot be empty.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        this.teSupplier2.Focus();
                        return;
                    }
                    if (suppliers.Length > 1)
                    {
                        MessageBox.Show("Support only one supplier.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        this.teSupplier2.Focus();
                        return;
                    }

                    GetSuppProfile();
                    GetPONOsBySupp();
                    GetDNsBySupp();

                    //check box
                    riceChoose.CheckStyle = _part1Option == PH.POPC.BO.CompareTypeI.INV2DN ? DevExpress.XtraEditors.Controls.CheckStyles.Radio : DevExpress.XtraEditors.Controls.CheckStyles.Standard;
                    riceChoose.RadioGroupIndex = _part1Option == PH.POPC.BO.CompareTypeI.INV2DN ? 1 : -1;


                    this.tePO2s.EditValueChanging -= new DevExpress.XtraEditors.Controls.ChangingEventHandler(tePO2s_EditValueChanging);
                    this.teNotes.EditValueChanging -= new DevExpress.XtraEditors.Controls.ChangingEventHandler(teNotes_EditValueChanging);
                    this.gcAdviceNote.DataSource = null;
                    this.tePO2s.Text = "";
                    this.teNotes.Text = "";
                    this.tePO2s.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(tePO2s_EditValueChanging);
                    this.teNotes.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(teNotes_EditValueChanging);


                    this.btnBack.Text = "<< Previous";
                    this.btnNext.Text = "Confirm";

                    string[] pos = GetAdviceNoteSupps(this.PONO2);
                    string[] notes = GetAdviceNoteSupps(this.Note2);
                    InitAdviceDataSource(suppliers, pos, notes);


                    this.tcInvEntranceKey.SelectedTabPage = this.tp2;
                }
            }
            #endregion
            #region Page 2

            else if (this.tcInvEntranceKey.SelectedTabPage == this.tp2)
            {
                GenernalCondition();
                string dn = Condition.AdviceNote;
                if (string.IsNullOrEmpty(dn))
                {
                    //MessageBox.Show("Please choose one Advice Note at first.");
                    MessageBox.Show("select a advice note at least!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                else
                {
                    string[] dns = Condition.AdviceNotes;
                    if (_part1Option == PH.POPC.BO.CompareTypeI.INV2DN && dns.Length != 1)
                    {
                        MessageBox.Show("Can choose one Advice Note only.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                    //else if (_part1Option == PH.POPC.BO.CompareTypeI.INV2DNs && dns.Length < 2)
                    //{
                    //    MessageBox.Show("Please choose two or above Advice Notes.");
                    //    return;
                    //}

                    #region Validation

                    InvddValidation(DateTime.MinValue);
                    InvNoValidation(null);
                    //CurrValidation(null);
                    InvQtyValidation(null, 0);
                    //InvAmountValidation(null, 0);

                    //this.deInvoiceDate.EditValue = null;
                    //this.teInvoiceNo.Text = null;

                    this.deInvoiceQty.EditValue = (decimal?)null;
                    this.deInvoiceAmount.EditValue = (decimal?)null;
                    this.edCurrency.Text = null;

                    #endregion

                    this.btnNext.Enabled = false;
                    this.btnGotoPart2.Enabled = false;

                    this.btnNext.Location = new Point(148, 4);
                    this.btnNext.Size = new Size(133, 30);

                    dn = dn.Substring(0, dn.Length - 1);
                    dn = dn.Replace(",", ", ");
                    this.lbAdviceNote.Text = dn;

                    this.btnBack.Text = "<< Previous";
                    this.btnNext.Text = "Matching - Accepted";

                    this.Hide();
                    //this._l5Form.CreateWaitDialog("Loading data...", "Please waiting");

                    PH.Platform.UI.WaitingForm.Show("", "");
                    try
                    {
                        GetPOPCValue();
                    }
                    finally
                    {
                        //this._l5Form.ReleaseWaitDialog();
                        PH.Platform.UI.WaitingForm.Close();
                        this.Show();
                    }

                    this.lbTtlPOPCQty.Text = string.Format("{0:#,##0.####}", this.POPCTtlQty);
                    //this.lbTtlPOPCAmount.Text = string.Format("{0:#,##0.00##} {1}", this.POPCTtlAmount, this._currency);

                    //由David修改 2022-06-21
                    this.lbTtlPOPCAmount_VAT.Visible = this.label11.Visible = false;
                    if (this._currency.ToUpper() == "RMB")
                    {
                        //this.label12.Text = "Ttl. PO Amount(VAT):";
                        this.lbTtlPOPCAmount.Text = string.Format("{0:#,##0.00##} {1}", this.POPCVATTtlAmount, this._currency);
                    }
                    else
                    {
                        //this.label12.Text = "Ttl. PO Amount:";
                        this.lbTtlPOPCAmount.Text = string.Format("{0:#,##0.00##} {1}", this.POPCTtlAmount, this._currency);
                    }

                    //init unit dependent
                    rgUnitDependent.EditValue = true;
                    UnitDependentChanged();


                    this.tcInvEntranceKey.SelectedTabPage = this.tp3;
                    this.Width = 1390;
                }
            }
            #endregion
            #region Page 3

            else if (this.tcInvEntranceKey.SelectedTabPage == this.tp3)
            {
                this.Width = 1390;

                GenernalCondition();
                Condition.ComTypeII = PH.POPC.BO.CompareTypeII.DeliveryNote;
                //All are matching
                this.DialogResult = DialogResult.OK;

            }
            #endregion


            this.btnBack.Enabled = this.tcInvEntranceKey.SelectedTabPage != this.tp1;
            this.btnGotoPart2.Visible = this.tcInvEntranceKey.SelectedTabPage == this.tp3;
            //btnSave.Visible = this.tcInvEntranceKey.SelectedTabPage == this.tp3;

            int DeskWidth = Screen.PrimaryScreen.Bounds.Width;
            int DeskHeight = Screen.PrimaryScreen.Bounds.Height;
            this.Left = (DeskWidth - this.Width) / 2;
            this.Top = (DeskHeight - this.Height) / 2;
        }


        private void rgUnitDependent_EditValueChanged(object sender, EventArgs e)
        {
            UnitDependentChanged();
        }
        private void UnitDependentChanged()
        {
            //gcUnit.Location = panelSingleUnit.Location;

            //gcUnit.Visible = !this.SingleUnit;
            //panelSingleUnit.Visible = this.SingleUnit;

            gcUnit.Visible = true;
            panelSingleUnit.Visible = false;


            ValidationWithEnable();
        }


        #region Double Click

        // currency
        private void label8_DoubleClick(object sender, EventArgs e)
        {
            this.edCurrency.Text = this._currency;
        }
        // ttl inv amount
        private void label1_DoubleClick(object sender, EventArgs e)
        {
            this.deInvoiceAmount.EditValue = this.POPCTtlAmount;
        }
        // ttl inv qty
        private void label9_DoubleClick(object sender, EventArgs e)
        {
            this.deInvoiceQty.EditValue = this.POPCTtlQty;
        }
        //multi unit
        private void gcUnit_DoubleClick(object sender, EventArgs e)
        {
            //HitTestDoubleClick();
        }
        //private void HitTestDoubleClick()
        //{
        //    Point p = gcUnit.PointToClient(Control.MousePosition);
        //    DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo info = gvUnit.CalcHitInfo(p);

        //    if (info.InRowCell && info.Column == this.colPOPCQty)
        //    {
        //        PH.POPC.BO.InvoiceUnitQty iuq = this.invoiceUnitQtyBindingSource.Current as PH.POPC.BO.InvoiceUnitQty;
        //        if (iuq == null) return;

        //        iuq.InvQty = iuq.POPCQty;
        //        gvUnit.PostEditor();
        //        gvUnit.UpdateCurrentRow();
        //        //gvUnit.SetFocusedRowCellValue(this.colInvQty, iuq.POPCQty);
        //        ValidationWithEnable();

        //    }
        //}

        #endregion

        //invoice matching value
        private void deInvoiceQty_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            decimal? d = Convert.ToDecimal(e.NewValue);
            if (e.NewValue == null)
                d = (decimal?)null;
            InvQtyChange(d);
        }
        private void deInvoiceAmount_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            decimal? d = Convert.ToDecimal(e.NewValue);
            if (e.NewValue == null)
                d = (decimal?)null;
            InvAmountChange(d);
        }
        private void InvQtyChange(decimal? d)
        {
            decimal diff = (d ?? 0) - (this.POPCTtlQty ?? 0);
            this.lbTtlDiffQty.Text = d.HasValue ? (diff == 0 ? "Matching" : string.Format("{0:#,##0.####}", diff)) : "N.A.";

            this.lbTtlDiffQty.ForeColor = d.HasValue ? (diff != 0 ? Color.Red : Color.Blue) : Color.Black;

            this.lbDiffQtyText.ForeColor = this.lbTtlDiffQty.ForeColor;

            InvQtyValidation(d, diff);
        }
        private void InvAmountChange(decimal? d)
        {
            //由David修改 2022-06-22
            decimal diff = (d ?? 0) - (this._currency.ToUpper() == "RMB" ? (POPCVATTtlAmount ?? 0) : (POPCTtlAmount ?? 0));
            //decimal diff = (d ?? 0) - (this.POPCTtlAmount ?? 0);


            this.lbTtlDiffAmount.Text = d.HasValue ? (diff == 0 ? "Matching" : string.Format("{0:#,##0.00##}", diff)) : "N.A.";

            this.lbTtlDiffAmount.ForeColor = d.HasValue ? (diff != 0 ? Color.Red : Color.Blue) : Color.Black;

            this.lbDiffAmountText.ForeColor = this.lbTtlDiffAmount.ForeColor;

            //InvAmountValidation(d, diff);
        }

        private void riteQty_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            //decimal? d = Convert.ToDecimal(e.NewValue);//invoice
            //PH.POPC.BO.InvoiceUnitQty iuq = this.invoiceUnitQtyBindingSource.Current as PH.POPC.BO.InvoiceUnitQty;
            //if (iuq == null) return;
            //iuq.InvQty = d;
            ////decimal diff = (d ?? 0) - (iuq.POPCQty ?? 0);
            ////this.gvUnit.PostEditor();
            //this.gvUnit.SetFocusedRowCellValue(this.colDiffQty, iuq.DiffQtyStr);

            //ValidationWithEnable();
        }
        private void gvUnit_RowCellStyle(object sender, RowCellStyleEventArgs e)
        {
            if (e.Column.FieldName == "UsefulStockInQty")
            {
                object UsefulStockInQtyObj = gvUnit.GetRowCellValue(e.RowHandle, "UsefulStockInQty");
                object StockInQtyObj = gvUnit.GetRowCellValue(e.RowHandle, "StockInQty");

                if (UsefulStockInQtyObj == null || StockInQtyObj == null) return;

                decimal UsefulStockInQty = Convert.ToDecimal(UsefulStockInQtyObj);
                decimal StockInQty = Convert.ToDecimal(StockInQtyObj);

                if (UsefulStockInQty != StockInQty)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }

            //GridView currentView = sender as GridView;

            //if (e.Column == this.colDiffQty)
            //{
            //    string s = Convert.ToString(currentView.GetRowCellValue(e.RowHandle, e.Column));
            //    if (s == "Matching")
            //        e.Appearance.ForeColor = Color.Blue;
            //    else if (s == "N.A.")
            //        e.Appearance.ForeColor = Color.Black;
            //    else
            //        e.Appearance.ForeColor = Color.Red;
            //}
        }

        //Filtering DN
        private void tePO2s_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            string po = Convert.ToString(e.NewValue);
            FilteringDN2(po, this.Note2);
        }
        private void teNotes_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            string dn = Convert.ToString(e.NewValue);
            FilteringDN2(this.PONO2, dn);
        }
        private void FilteringDN(string po, string dn)
        {
            this.gvAdviceNote.BeginDataUpdate();
            try
            {
                string[] pos = GetAdviceNoteSupps(po);
                string[] notes = GetAdviceNoteSupps(dn);

                var lists = from a in _DNs
                            where (notes.Length == 0 || notes.Contains(a.AdviceNote))
                                  && (pos.Length == 0 || a.POAdviceNotePOs.Any(p => pos.Contains(p.PONO)))
                            orderby a.Supplier, a.AdviceNote
                            select a;

                this.gcAdviceNote.DataSource = null;
                this.bindingSource1.DataSource = lists;
                this.gcAdviceNote.DataSource = this.bindingSource1;
            }
            finally
            {
                this.gvAdviceNote.EndDataUpdate();

            }
        }
        private void FilteringDN2(string po, string dn)
        {
            this.gvAdviceNote.BeginDataUpdate();
            try
            {
                string[] pos = GetAdviceNoteSupps(po);
                string[] notes = GetAdviceNoteSupps(dn);

                //var lists = from a in _DNs
                //            where (notes.Length == 0 || notes.Contains(a.AdviceNote))
                //                  && (pos.Length == 0 || a.POAdviceNotePOs.Any(p => pos.Contains(p.PONO)))
                //            orderby a.Supplier, a.AdviceNote
                //            select a;

                //this.gcAdviceNote.DataSource = null;
                //this.bindingSource1.DataSource = lists;
                //this.gcAdviceNote.DataSource = this.bindingSource1;

                string filter1 = GetFiterString("AdviceNote", notes, "=");
                string filter2 = GetFiterString("PONOs", pos, "LIKE");
                string filter = "";
                if (!string.IsNullOrEmpty(filter1))
                {
                    filter = filter1;
                }
                if (!string.IsNullOrEmpty(filter2))
                {

                    filter = string.IsNullOrEmpty(filter) ? filter2 : string.Format("{0} AND {1}", filter, filter2);
                }

                this.gvAdviceNote.ActiveFilterString = filter;
            }
            finally
            {
                this.gvAdviceNote.EndDataUpdate();

            }
        }
        private string GetFiterString(string fieldName, string[] values, string comparisonOperator)
        {
            string filter = "";
            if (string.IsNullOrEmpty(comparisonOperator)) return filter;
            comparisonOperator = comparisonOperator.ToUpper();

            int i = 0;
            foreach (var s in values)
            {
                filter += string.Format("{0}[{1}] {2} '{4}{3}{4}'", i == 0 ? "" : " OR "
                    , fieldName
                    , comparisonOperator
                    , ConvertToSQLString(s)
                    , comparisonOperator.Contains("LIKE") ? "%" : "");
                ++i;
            }
            if (!string.IsNullOrEmpty(filter))
                filter = string.Format("({0})", filter);

            return filter;
        }
        private string ConvertToSQLString(string sql)
        {
            return sql.Replace("'", "''");
        }

        //validation
        private void deInvoiceDate_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            DateTime d = Convert.ToDateTime(e.NewValue);
            InvddValidation(d);
        }
        private void teInvoiceNo_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            string s = Convert.ToString(e.NewValue);
            InvNoValidation(s);
        }
        private void edCurrency_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            string s = Convert.ToString(e.NewValue);
            //CurrValidation(s);
        }
        private void teSupplier2_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            string s = Convert.ToString(e.NewValue);
            SuppValidation(s);
        }

        private void InvddValidation(DateTime d)
        {
            this.peInvdd_Y.Location = this.peInvdd_N.Location;
            this.peInvdd_Y.Visible = (d != DateTime.MinValue) && (d <= DateTime.Today);
            this.peInvdd_N.Visible = (d > DateTime.Today);

            //ValidationWithEnable();
        }
        private void InvNoValidation(string s)
        {
            this.peInvNo_Y.Location = this.peInvNo_N.Location;
            this.peInvNo_Y.Visible = !string.IsNullOrEmpty(s);
            this.peInvNo_N.Visible = false;// string.IsNullOrEmpty(s);

            //ValidationWithEnable();
        }
        //private void CurrValidation(string s)
        //{
        //    string curr = "";
        //    if (this._suppProfile != null)
        //    {
        //        curr = this._suppProfile.Currency;
        //    }

        //    this.peCurr_Y.Location = this.peCurr_N.Location;
        //    this.peCurr_Y.Visible = (!string.IsNullOrEmpty(s)) && (!string.IsNullOrEmpty(curr)) && (s == curr);
        //    this.peCurr_N.Visible = (!string.IsNullOrEmpty(s)) && (!string.IsNullOrEmpty(curr)) && (s != curr);

        //    ValidationWithEnable();
        //}
        private void InvQtyValidation(decimal? d, decimal diff)
        {
            this.peInvQty_Y.Location = this.peInvQty_N.Location;
            this.peInvQty_Y.Visible = d.HasValue && diff == 0;
            this.peInvQty_N.Visible = d.HasValue && diff != 0;

            ValidationWithEnable();
        }
        //private void InvAmountValidation(decimal? d, decimal diff)
        //{
        //    this.peInvAmount_Y.Location = this.peInvAmount_N.Location;
        //    this.peInvAmount_Y.Visible = d.HasValue && diff == 0;
        //    this.peInvAmount_N.Visible = d.HasValue && diff != 0;

        //    ValidationWithEnable();
        //}
        private void SuppValidation(string s)
        {
            string[] suppliers = GetAdviceNoteSupps(s);

            this.peSupp_Y.Location = this.peSupp_N.Location;
            this.peSupp_Y.Visible = (!string.IsNullOrEmpty(s)) && (suppliers.Length == 1) && (suppliers[0].Length == 4);
            this.peSupp_N.Visible = (!string.IsNullOrEmpty(s)) && !((suppliers.Length == 1) && (suppliers[0].Length == 4));
        }

        private void ValidationWithEnable()
        {
            //bool allOK = this.peInvdd_Y.Visible && this.peInvNo_Y.Visible && this.peCurr_Y.Visible && this.peInvAmount_Y.Visible;

            if (this.invoiceUnitQtyBindingSource.List.Count > 0)
            {
                var list = this.invoiceUnitQtyBindingSource.DataSource as IEnumerable<InvoiceUnitQty>;

                bool HasNoMatching = list.Where(p => p.ClaimDiffBy_RCQtyFlag != "√" && p.ClaimDiffBy_MoneyFlag != "√" && p.DiffTotalAmount != 0).Count() > 0;
                lbInvoiceAmountDiff.Text = HasNoMatching ? "--" : "Matching";

                //lbInvoiceAmountDiff.Text = list.Where(p => p.DiffTotalAmount != 0).Count() > 0 ? "--" : "Matching";
            }

            //            else if (e.Column.FieldName == "AmountDiff_ReviseInvoice" || e.Column.FieldName == "AmountDiff_DN" || e.Column.FieldName == "AmountDiff_CN")
            //{
            //    if (e.Value != null && e.Value.ToString() == "√")
            //    {
            //        //lbInvoiceAmountDiff.Text = "Matching";
            //        gvUnit.SetFocusedRowCellValue(colClaimDiffBy_MoneyFlag, "√");
            //    }
            //    ValidationWithEnable();
            //}
            //else if (e.Column.FieldName == "ClaimDiffBy_RCQtyFlag")



            bool allOK = lbInvoiceAmountDiff.Text == "Matching";
            //bool allOK = this.peInvdd_Y.Visible && this.peInvNo_Y.Visible && lbInvoiceAmountDiff.Text == "Matching";

            //if (this.SingleUnit)//single unit
            //    allOK = allOK && this.peInvQty_Y.Visible;
            //else //multi unit
            //    allOK = allOK && AllMultiUnitMatching;

            this.btnNext.Enabled = allOK;
            this.btnGotoPart2.Enabled = !allOK;
        }

        //Part 2
        private void btnGotoPart2_Click(object sender, EventArgs e)
        {
            //Non-Matching時也需要先錄入Invoice Date和Invoice No.
            if (deInvoiceDate.EditValue == null)
            {
                MessageBox.Show("Pls input the Invoice dd", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                deInvoiceDate.Focus();
                return;
            }

            if (teInvoiceNo.EditValue == null)
            {
                MessageBox.Show("Pls input the Invoice No.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                teInvoiceNo.Focus();
                return;
            }

            ////暂时关掉这个功能
            GenernalCondition();
            Condition.ComTypeII = PH.POPC.BO.CompareTypeII.Item;
            this.DialogResult = DialogResult.Ignore;

            _OutstandingAdviceNoteForm.ShowInvoiceMatchingStep2(Condition, teInvoiceNo.Text);
        }


        #endregion


        #endregion

        #region Level 5 - Part 3

        private void InitValueLevel5Part3()
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


            #region Supplier

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
            this.teSupplier3.DataSource = dtSupplier;
            this.teSupplier3.DisplayMember = "Supplier";

            #endregion


            this.Size = new Size(400, 200);
        }

        private void btnOK3_Click(object sender, EventArgs e)
        {
            GenernalCondition();
        }
        #endregion

        private void deInvoiceAmount_Enter(object sender, EventArgs e)
        {
            if (deInvoiceDate.EditValue == null)
            {
                MessageBox.Show("Pls input the Invoice dd", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                deInvoiceDate.Focus();
                return;
            }

            if (teInvoiceNo.EditValue == null)
            {
                MessageBox.Show("Pls input the Invoice No.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                teInvoiceNo.Focus();
                return;
            }
        }

        private void gvUnit_CellValueChanged(object sender, CellValueChangedEventArgs e)
        {
            if (e.Column.FieldName == "InvoiceTotalAmount")
            {
                var list = this.invoiceUnitQtyBindingSource.DataSource as IEnumerable<InvoiceUnitQty>;
                foreach (var obj in list)
                {
                    obj.InvoiceTotalAmount = e.Value == null ? (decimal?)null : Convert.ToDecimal(e.Value);
                }
                this.invoiceUnitQtyBindingSource.EndEdit();
                this.gvUnit.RefreshData();

                ValidationWithEnable();
            }
            else if (e.Column.FieldName == "AmountDiff_ReviseInvoice" || e.Column.FieldName == "AmountDiff_DN" || e.Column.FieldName == "AmountDiff_CN" || e.Column.FieldName == "AmountDiff_FOC")
            {
                string Str = e.Value != null && e.Value.ToString() == "√" ? "√" : "--";
                gvUnit.SetFocusedRowCellValue(colClaimDiffBy_MoneyFlag, Str);
                ValidationWithEnable();
            }
            else if (e.Column.FieldName == "ClaimDiffBy_RCQtyFlag")
            {
                ValidationWithEnable();
            }
        }

        private void gvAdviceNote_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<POAdviceNote> lists = gvAdviceNote.FilteredList().Cast<POAdviceNote>();

                switch (item.FieldName)
                {
                    case "AdviceNote":
                        e.TotalValue = lists.Select(p => p.AdviceNote).Distinct().Count();
                        break;
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            _OutstandingAdviceNoteForm.SaveInvoiceInfo(teInvoiceNo.Text, deInvoiceDate.DateTime);
        }



    }
}