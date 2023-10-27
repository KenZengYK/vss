using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using System.Data.Linq;

namespace PH.RWO.UI.WO
{
    public partial class WOVersionChangedReasonForm : DevExpress.XtraEditors.XtraForm
    {
        public WOVersionChangedReasonForm()
        {
            InitializeComponent();
        }

        PH.RWO.BO.WorkOrder _wo;
        PH.RWO.BO.WorkOrderVersion _wv;
        PH.RWO.BO.RWOSOPCDataContext _context;
        public WOVersionChangedReasonForm(PH.RWO.BO.WorkOrder wo)
        {
            InitializeComponent();
            this._wo = wo;

            PH.RWO.BO.WorkOrderVersionList wvlist = new PH.RWO.BO.WorkOrderVersionList();
            _wv = wvlist.GetWorkOrderVersion(_wo.WorkOrderNo, _wo.Version ?? 0);
            _context = wvlist.CurrentDataContext as PH.RWO.BO.RWOSOPCDataContext;
            if (_wv == null)
            {
                _wv = new PH.RWO.BO.WorkOrderVersion();
                //_wv.CurrentDataContext = _context;
                //_wv.WorkOrder = _wo;
                _wv.Company = _wo.Company;
                _wv.SalesOrderNo = _wo.SalesOrderNo;
                _wv.WorkOrderNo = _wo.WorkOrderNo;
                _wv.Version = (_wo.Version ?? 0);
                _wv.SalesOrderLine = _wo.SalesOrderLine;
                //_wv.ChangedCause = "";

                //_wo.WorkOrderVersions.Add(_wv);

                _context.WorkOrderVersions.InsertOnSubmit(_wv);
            }
            CheckMatchVersion();
            CreateReasons();
        }
        private void CheckMatchVersion()
        {
            string s = string.Format("newly WO version is: {0}", _wo.Version);
            foreach (var woc in _wo.WorkOrderColors)
            {
                foreach (var rwo in woc.RoundWorkOrders)
                {
                    if (rwo.WOVersion != _wo.Version)
                    {
                        s += string.Format("\r\nColor:{2} RWO:{0} match WO version: {1} ", rwo.RoundNos, rwo.WOVersion, rwo.ColorCode);
                    }
                }
            }
            this.lbTips.Text = s;
        }
        private void CreateReasons()
        {
            string reasons = _wv.ChangedCause;

            PH.RWO.BO.DictionaryList diclist = new PH.RWO.BO.DictionaryList();
            var aa = diclist.GetDataDictionary("PH.RWO.WOVersionChangedReason");
            DevExpress.XtraEditors.CheckEdit ce;
            System.Windows.Forms.Label lb;

            int x = 10;
            int y = 30;
            int height = 50;
            int width = this.groupReason.Width - x - 25;
            foreach (var a in aa)
            {
                ce = new CheckEdit();
                ce.Tag = a;
                ce.Text = "";
                if (!string.IsNullOrEmpty(reasons))
                    ce.Checked = reasons.Contains(a.DataCode);
                else
                    ce.Checked = false;
                //ce.Properties.NullStyle == DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
                ce.Location = new Point(x, y);
                ce.Size = new Size(20, 20);
                this.groupReason.Controls.Add(ce);

                lb = new Label();
                lb.Text = a.Description;
                lb.Location = new Point(x+20, y);
                lb.Size = new Size(width, height);
                this.groupReason.Controls.Add(lb);

                y += height;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            Save();
            this.DialogResult = DialogResult.Yes;
        }
        //private void Save()
        //{
        //    string reasons = "";
        //    foreach (DevExpress.XtraEditors.CheckEdit ce in this.groupReason.Controls)
        //    {
        //        if (ce == null || !ce.Checked) continue;

        //        PH.Platform.Misc.BO.Misc_DataDictionary d = ce.Tag as PH.Platform.Misc.BO.Misc_DataDictionary;
        //        if (d == null) continue;

        //        reasons += string.Format("{0};", d.DataCode);
        //    }

        //    this._wv.ChangedCause = reasons;
        //    this._context.SubmitChanges(ConflictMode.ContinueOnConflict);

        //}
        private void Save()
        {
            string reasons = "";
            // foreach (DevExpress.XtraEditors.CheckEdit ce in this.groupReason.Controls)
            foreach (Control cl in this.groupReason.Controls)
            {
                //if (cl is DevExpress.XtraEditors.CheckEdit) continue;

                DevExpress.XtraEditors.CheckEdit ce = cl as DevExpress.XtraEditors.CheckEdit;
                if (ce == null || !ce.Checked) continue;

                PH.Platform.Misc.BO.Misc_DataDictionary d = ce.Tag as PH.Platform.Misc.BO.Misc_DataDictionary;
                if (d == null) continue;

                reasons += string.Format("{0};", d.DataCode);
            }

            this._wv.ChangedCause = reasons;
            this._context.SubmitChanges(ConflictMode.ContinueOnConflict);

        }
        private void btnUpdateVersion_Click(object sender, EventArgs e)
        {
            Save();
            RenewVerson();
            this.DialogResult = DialogResult.Yes;
        }
        private void RenewVerson()
        {
            foreach (var woc in _wo.WorkOrderColors)
            {
                foreach (var rwo in woc.RoundWorkOrders)
                {
                    if (rwo.WOVersion != _wo.Version)
                    {
                        rwo.WOVersion = _wo.Version;
                    }
                    foreach (var rwo2 in rwo.RoundWorkOrderIIs)
                    {
                        if (rwo2.RWOVersion != rwo.Version)
                            rwo2.RWOVersion = rwo.Version;
                    }
                }
            }


        }

    }
}