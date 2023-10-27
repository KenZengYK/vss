using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.RWO.UI.Amend
{
    public partial class AmendDetailForm : ParentChildForm
    {
        public AmendDetailForm()
        {
            InitializeComponent();
        }

        AmendMaster CurrentMaster;
        string _user = PH.Platform.Common.SysParamHelper.Instance.UserID;

        public override void DataBind()
        {
            base.DataBind();
            //AmendMaster CurrentMaster = this.BindingSource.Current as AmendMaster;
            CurrentMaster = this.BindingSource.Current as AmendMaster;
            SetCheckItem(false);
            BindCheckItem();
            this.amendItemList1.BindingSource.DataSource = CurrentMaster.AmendDetails;
            amendItemList1.EditorTypeName = typeof(AmendWoDetail).FullName;

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            if (IsNew)
            {
                edtAmendNo.Properties.ReadOnly = true;
                edtVersion.Properties.ReadOnly = true;
            }
            SetCheckItem(true);
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            SetCheckItem(false);
        }



        protected override void SaveCurrent()
        {
            CurrentMaster = this.BindingSource.Current as AmendMaster;
            if (IsNew)
            {
                if ((this.PrevForm as AmendListForm).IsNewVersion)
                {
                    CurrentMaster.AmendNo = (this.PrevForm as AmendListForm).OrignalMaster.AmendNo;
                    CurrentMaster.VerId = GetNewVersion();
                }
                else
                {
                    CurrentMaster.AmendNo = GeneratAmendNo();
                    CurrentMaster.VerId = 1; //版本从1开始， 由David修改 2023-02-22
                    //CurrentMaster.VerId = 2; //版本从2开始， 由David修改 2022-11-11
                }
                CurrentMaster.CreateBy = _user;
                CurrentMaster.CreateTime = DateTime.Now;
            }
            else
            {
                CurrentMaster.UpdateBy = _user;
                CurrentMaster.UpdateTime = DateTime.Now;
            }

            string _reason = "";
            if (ckR1.Checked)
                _reason = _reason + "R1;";
            if (ckR2.Checked)
                _reason = _reason + "R2;";
            if (ckR3.Checked)
                _reason = _reason + "R3;";
            if (ckR4.Checked)
                _reason = _reason + "R4;";
            if (ckR5.Checked)
                _reason = _reason + "R5;";
            if (ckR6.Checked)
                _reason = _reason + "R6;";

            CurrentMaster.AmenddReason = _reason.Length > 1 ? _reason.Remove(_reason.Length - 1) : "";

            string _content = "";
            if (ckC1.Checked)
                _content = _content + "C1;";
            if (ckC2.Checked)
                _content = _content + "C2;";
            if (ckC3.Checked)
                _content = _content + "C3;";
            if (ckC4.Checked)
                _content = _content + "C4;";
            if (ckC5.Checked)
                _content = _content + "C5;";

            if (ckC6.Checked)
                _content = _content + "C6;";
            if (ckC7.Checked)
                _content = _content + "C7;";
            if (ckC8.Checked)
                _content = _content + "C8;";
            if (ckC9.Checked)
                _content = _content + "C9;";
            if (ckCA.Checked)
                _content = _content + "CA;";
            if (ckCB.Checked)
                _content = _content + "CB;";
            if (ckCC.Checked)
                _content = _content + "CC;";

            CurrentMaster.AmendContent = _content.Length > 1 ? _content.Remove(_content.Length - 1) : "";

            //BindingSource.EndEdit();
            IsNew = false;
            base.SaveCurrent();
        }

        private void BindCheckItem()
        {
            CurrentMaster = this.BindingSource.Current as AmendMaster;
            if (CurrentMaster == null)
                return;
            string _reason = CurrentMaster.AmenddReason;
            string _content = CurrentMaster.AmendContent;
            if (!string.IsNullOrEmpty(_reason))
            {
                if (_reason.Contains("R1"))
                    ckR1.Checked = true;
                if (_reason.Contains("R2"))
                    ckR2.Checked = true;
                if (_reason.Contains("R3"))
                    ckR3.Checked = true;
                if (_reason.Contains("R4"))
                    ckR4.Checked = true;
                if (_reason.Contains("R5"))
                    ckR5.Checked = true;
                if (_reason.Contains("R6"))
                    ckR6.Checked = true;

                edtOther.Enabled = ckR6.Checked;
            }

            if (!string.IsNullOrEmpty(_content))
            {

                if (_content.Contains("C1"))
                    ckC1.Checked = true;
                if (_content.Contains("C2"))
                    ckC2.Checked = true;
                if (_content.Contains("C3"))
                    ckC3.Checked = true;
                if (_content.Contains("C4"))
                    ckC4.Checked = true;
                if (_content.Contains("C5"))
                    ckC5.Checked = true;


                if (_content.Contains("C6"))
                    ckC6.Checked = true;
                if (_content.Contains("C7"))
                    ckC7.Checked = true;
                if (_content.Contains("C8"))
                    ckC8.Checked = true;
                if (_content.Contains("C9"))
                    ckC9.Checked = true;
                if (_content.Contains("CA"))
                    ckCA.Checked = true;
                if (_content.Contains("CB"))
                    ckCB.Checked = true;
                if (_content.Contains("CC"))
                    ckCC.Checked = true;

            }

        }

        private void SetCheckItem(bool enable)
        {
            ckR1.Enabled = enable;
            ckR2.Enabled = enable;
            ckR3.Enabled = enable;
            ckR4.Enabled = enable;
            ckR5.Enabled = enable;
            ckR6.Enabled = enable;

            ckC1.Enabled = enable;
            ckC2.Enabled = enable;
            ckC3.Enabled = enable;
            ckC4.Enabled = enable;
            ckC5.Enabled = enable;
            ckC6.Enabled = enable;
            ckC7.Enabled = enable;
            ckC8.Enabled = enable;
            ckC9.Enabled = enable;
            ckCA.Enabled = enable;
            ckCB.Enabled = enable;
            ckCC.Enabled = enable;
        }

        private string GeneratAmendNo()
        {

            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            int ii = context.AmendMasters.Count();
            string s = "";

            if (ii == 0)
            {
                s = "A";
            }
            else
            {
                s = (from p in context.AmendMasters
                     orderby p.AmendNo descending
                     select p.AmendNo).First();
            }

            //System.Text.ASCIIEncoding asciiEncoding = new System.Text.ASCIIEncoding();

            char _ar = char.Parse(s.Substring(0, 1));

            int _id = s.Length == 1 ? 0 : int.Parse(s.Substring(1, 7));

            if (_id == 9999999)
            {
                int i = (int)_ar;
                _ar = (char)i++;
                _id = 1;
            }
            else
                _id++;

            string _str = (10000000 + _id).ToString();

            _str = _ar.ToString() + _str.Substring(1, 7);

            return _str;

        }

        private int GetNewVersion()
        {
            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            int temp = 0; int? _max = 0;
            var ss = from a in context.AmendMasters
                     where a.AmendNo == CurrentMaster.AmendNo
                     select a;
            if (ss != null)
            {
                var q = ss.Max(p => p.VerId as int?);
                if (q != null)
                    temp = q.Value + 1;
                return temp;
            }
            else
                return 1;   //版本从1开始 由David修改2023-02-22
            //return 2;   //版本从2开始 由David修改2022-11-11
        }

        private void barBtnSaveAndReturn_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (this.ListForm as AmendListForm).IsNewVersion = false;
            base.OnClickSaveAndReturn();

        }

        private void barBtnCancel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (this.ListForm as AmendListForm).IsNewVersion = false;
            base.OnClickCancel();
        }

        private void ckR5_CheckedChanged(object sender, EventArgs e)
        {
            edtOther.Enabled = ckR6.Checked;
        }


    }
}
