using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI.SOSS
{
    public partial class SOSSForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SOSSForm()
        {
            InitializeComponent();
            _helper = new PH.RWO.BO.DataHelper();
            _classCodes = new List<SOSSClassCode>();
        }

        #region Fields

        public readonly string Company = "P1";
        public string SOProject
        {
            get
            {
                return this.editSOProject.Text;
            }
        }

        public string PreparedBy
        {
            get { return this.tePrepared.Text; }
        }
        public string ConfirmedBy
        {
            get { return this.teConfirmed.Text; }
        }
        public string ApprovedBy
        {
            get { return this.teApproved.Text; }
        }
        public DateTime ConfirmedDate
        {
            get { return this.deConfirmDate.DateTime; }
        }
        public DateTime ApprovedDate
        {
            get { return this.deApproveDate.DateTime; }
        }

        public string Remark
        {
            get { return this.teRemark.Text; }
        }

        private PH.RWO.BO.DataHelper _helper;
        private SOSSHeader _sossHeader;
        private List<SOSSClassCode> _classCodes;

        #endregion

        #region Function

        private bool IsSalesOrderNo(string str)
        {
            if (string.IsNullOrEmpty(str)) return false;

            int i;
            bool b = int.TryParse(str, out i);//能夠轉化為數字即為SaleOrderNo
            return b;

        }
        private void GetDate()
        {
            if (string.IsNullOrEmpty(this.SOProject))
            {
                MessageBox.Show("Please input Sales Order No (or Project No)!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.editSOProject.Focus();
                return;
            }

            lbTips.Text = "";
            this.btnPrint.Text = "Print";
            Application.DoEvents();

            #region Get SO/Project value

            string so = "";
            string project = "";
            if (IsSalesOrderNo(this.SOProject))
            {
                so = this.SOProject.PadLeft(7, '0');
                this.editSOProject.Text = so;

                project = _helper.GetProjectbySO(this.Company, so);
                if (string.IsNullOrEmpty(project))
                {
                    MessageBox.Show(string.Format("Sales Order No [{0}] not exists!", so), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.editSOProject.Focus();
                    return;
                }

            }
            else
            {
                project = this.SOProject;
                so = _helper.GetSObyProject(this.Company, project);
                if (string.IsNullOrEmpty(so))
                {
                    MessageBox.Show(string.Format("Project No [{0}] not exists!", project), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.editSOProject.Focus();
                    return;
                }
            }
            #endregion

            lbTips.Text = string.Format("SO No.: {0} / Project No.: {1}", so, project);
            this.btnPrint.Text = string.Format("Print [{0}]", this.SOProject);
            ClearHeaderValue();

            int dt = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            string tm = DateTime.Now.ToString("HHmmssfff");

            this.Cursor = Cursors.WaitCursor;
            this.bindingSource1.DataSource = null;
            this.btnPrint.Enabled = this.btnSave.Enabled = false;
            Application.DoEvents();

            try
            {
                #region Get soss data

                _helper.CallERPStoreProcedue(dt, tm, this.Company, so);

                _sossHeader = _helper.GetSOSSes(dt, tm, this.Company, so);

                SetHeaderValue(_sossHeader, false);

                _classCodes = _helper.GetSOSSClassCodes(dt, tm);

                #endregion

                //changed position event
                this.bindingSource1.PositionChanged -= new EventHandler(bindingSource1_PositionChanged);
                this.bindingSource1.DataSource = _sossHeader.Details;
                this.bindingSource1.PositionChanged += new EventHandler(bindingSource1_PositionChanged);
                PostionChanged();

                this.btnPrint.Enabled = this.btnSave.Enabled = true;

            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }

        void bindingSource1_PositionChanged(object sender, EventArgs e)
        {
            PostionChanged();
        }
        private void PostionChanged()
        {
            this.ricbClassCode.Items.Clear();
            SOSSDetail d = bindingSource1.Current as SOSSDetail;
            if (d == null) return;
            var ss = from a in this._classCodes
                     where a.StyleNo == d.StyleNo
                     orderby a.ClassCode
                     select a;
            foreach (var s in ss)
            {
                this.ricbClassCode.Items.Add(s.ClassCode);
            }
        }

        private void SetHeaderValue(SOSSHeader header, bool toBO)
        {
            if (header == null) return;

            if (toBO)
            {
                header.PreparedBy = this.PreparedBy;
                header.ConfirmedBy = this.ConfirmedBy;
                header.ApprovedBy = this.ApprovedBy;

                header.ConfirmedDate = this.ConfirmedDate == DateTime.MinValue ? (DateTime?)null : this.ConfirmedDate;
                header.ApprovedBDate = this.ApprovedDate == DateTime.MinValue ? (DateTime?)null : this.ApprovedDate;
                header.Remark = this.Remark;
            }
            else
            {
                this.tePrepared.Text = header.PreparedBy;
                this.teConfirmed.Text = header.ConfirmedBy;
                this.teApproved.Text = header.ApprovedBy;

                this.deConfirmDate.EditValue = header.ConfirmedDate;
                this.deApproveDate.EditValue = header.ApprovedBDate;
                this.teRemark.Text = header.Remark;
            }
        }
        private void ClearHeaderValue()
        {
            this.tePrepared.Text = "";
            this.teConfirmed.Text = "";
            this.teApproved.Text = "";

            this.deConfirmDate.EditValue = null;
            this.deApproveDate.EditValue = null;
            this.teRemark.Text = "";
        }
        private void PrintReport()
        {
            if (!SaveData(false)) return;

            PH.RWO.BackEnd.SOSS.SOSSReport report = new PH.RWO.BackEnd.SOSS.SOSSReport(_sossHeader);

            report.ExportOptions.PrintPreview.DefaultFileName = string.Format("SOSS-{0}", _sossHeader.SalesOrderNo);
            report.ShowPreviewDialog();
        }

        private bool SaveData(bool bShow)
        {
            try
            {
                if (this.gridView1.PostEditor())
                    this.gridView1.UpdateCurrentRow();

                SetHeaderValue(_sossHeader, true);

                #region Sp_OES_Report

                string sConfirmDate = this.ConfirmedDate == DateTime.MinValue ? "NULL" : string.Format("'{0:yyyy/MM/dd}'", this.ConfirmedDate);
                string sApproveDate = this.ApprovedDate == DateTime.MinValue ? "NULL" : string.Format("'{0:yyyy/MM/dd}'", this.ApprovedDate);

                string sql = string.Format("exec [phgdb2].dbo.Sp_OES_Report '{0}','{1}','{2}','{3}','{4}','{5}',{6},{7}", Company, _sossHeader.SalesOrderNo, this.PreparedBy, this.ConfirmedBy, this.ApprovedBy, _helper.ConvertToDBsql(this.Remark), sConfirmDate, sApproveDate);
                _helper.RWOContext.ExecuteCommand(sql);
                #endregion

                #region OES_ProfitMargin

                sql = "";
                foreach (var d in _sossHeader.Details)
                {

                    sql += string.Format("exec [phgdb2].dbo.sp_OES_ProfitMargin1 '{0}','{1}',{2},'{3}','{4}','{5}',{6},{7},{8},{9},{10},{11},{12},'{13}','{14}','{15}' \r\n"
                       , d.Company
                       , d.SalesOrderNo
                       , d.SalesOrderLine
                       , d.WorkOrderNo
                       , d.Customer
                       , d.DSEQ
                       , d.Commission / 100
                       , d.Deviation / 100
                       , d.SpecialCost
                       , d.DocAdminCost
                       , d.MCQ
                       , d.MOQ
                       , d.SubCharge
                       , d.PE
                       , d.StyleNo
                       , d.ClassCode
                       );
                }
                if (!string.IsNullOrEmpty(sql))
                    _helper.RWOContext.ExecuteCommand(sql);

                #endregion

                if (bShow)
                {
                    MessageBox.Show("Save Success!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                return true;

            }
            catch (Exception err)
            {
                MessageBox.Show("Save Fail!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
        }

        #endregion

        #region Event

        private void btnOK_Click(object sender, EventArgs e)
        {
            GetDate();
        }
        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintReport();
        }
        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveData(true);
        }


        private void editOrdn_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter) return;

            GetDate();
        }

        #endregion


    }
}
