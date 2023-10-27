using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MR.BO;

namespace PH.MR.UI
{
    public partial class frmSaveRemark : DevExpress.XtraEditors.XtraForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        public frmSaveRemark(string cono, string project, string dept, SaveRemarkType remarkType)
        {
            //this.CreateWaitDialog("please wait", string.Format("generate a MR Version No for Project : {0}", project));
            // Required for Windows Form Designer support
            InitializeComponent();

            // TODO: Add any constructor code after InitializeComponent call
            this._cono = cono;
            this._project = project;
            this._dept = dept;
            this._remarkType = remarkType;

            InitValue();
        }
        #region WaitDialog
        private DevExpress.Utils.WaitDialogForm dlg = null;
        public void CreateWaitDialog()
        {
            CreateWaitDialog("please wait", "starting PH SideProgram .....");
        }
        public void CreateWaitDialog(string caption, string title)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }
        public void CreateWaitDialog(string caption, string title, Size size)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
        }
        public void SetWaitDialogCaption(string fCaption)
        {
            if (dlg != null)
                dlg.Caption = fCaption;
        }
        #endregion
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (dlg != null) dlg.Close();
        }

        private void InitValue()
        {
            switch (this._remarkType)
            {
                case SaveRemarkType.NewVersion:
                    MRHelper.GetMaxVersion(this._cono, this._project, this._dept, ref this._maxVersion, ref this._fID, ref this._deptVersion);
                    this.lbTips.Text = string.Format("Enter a description for Version {0} [{1} {2}] of {3} :", this._maxVersion, this._dept, this._deptVersion, this._project);
                    this.Text = "Save Version";
                    break;
                case SaveRemarkType.MarkComplete:
                    this.lbTips.Text = string.Format("Enter a description for Project: {0} :", this._project);
                    this._Description = "Mark Complete";
                    break;
                default:
                    break;
            }
            this._Description = "";
        }

        #region Fields

        private string _cono;
        public string CONO
        {
            get { return _cono; }
        }

        private string _project;
        public string Project
        {
            get { return _project; }
        }

        private string _user;

        public string User
        {
            get { return _user; }
            set { _user = value; }
        }

        private string _dept;
        public string Dept
        {
            get { return _dept; }
        }

        private int _maxVersion;
        public int MaxVersion
        {
            get { return _maxVersion; }
        }

        private int _fID;
        public int FID
        {
            get { return _fID; }
        }

        private int _deptVersion;
        public int DeptVersion
        {
            get { return _deptVersion; }
        }

        private string _Description;
        public string Description
        {
            get { return _Description; }
        }
        private SaveRemarkType _remarkType;
        #endregion


        private void btnOK_Click(object sender, EventArgs e)
        {
            this._Description = this.editDescription.Text.Trim();
            if (this._Description == "")
            {
                MessageBox.Show("description can not be blank.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (this._remarkType == SaveRemarkType.NewVersion)
                MRHelper.CancelSaveVersion(this._fID);
            this.DialogResult = DialogResult.Cancel;
        }

    }
}