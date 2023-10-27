using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.LWPM.UI.MC
{
    public partial class QuatationDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public QuatationDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BindCurrency();
            BindUsingDept();
            // recIdTextBox.ReadOnly = true;

            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            this.edtVendor.Properties.DisplayMember = "Name_TW";
            this.edtVendor.Properties.ValueMember = "Code";
            this.edtVendor.Properties.DataSource = db.Vendors;
        }

        public override void EditCurrent()
        {
            QuatationListForm _prefrm = this.PrevForm as QuatationListForm;
            base.EditCurrent();
            edtTyDesc.Properties.ReadOnly = true;
            edtTyDesc.Text = _prefrm.TypeDesc;

            typeCodeTextEdit.Text = _prefrm.TypeCode;
            typeCodeTextEdit.Properties.ReadOnly = true;
            if (IsNew)
                ckActive.Checked = false;
            //edtTyDesc.Properties.ReadOnly = true;

            // createByTextEdit,createTimeDateEdit,updateByTextEdit,updateTimeDateEdit

            //createByTextEdit.Enabled = false; createTimeDateEdit.Enabled = false;
            //updateByTextEdit.Enabled = false; updateTimeDateEdit.Enabled = false;



        }


        //protected override void OnClickCancel()
        //{
        //    var obj = this.BindingSource.Current as QuatationInfo;
        //    string aa = obj.Manufacturer;
        //    string bb = obj.VendorCode;

        //    base.OnClickCancel();

        //    string aa1 = obj.Manufacturer;
        //    string bb1 = obj.VendorCode;
        //}

        private void recIdTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected override void SaveCurrent()
        {

            if (typeCodeTextEdit.Text.Trim() == "" || this.edtVendor.Text.Trim() == "")
            {
                MessageBox.Show("Machine type & Vendor can not be null!");
                return;
            }

            QuatationInfo _qi = this.BindingSource.Current as QuatationInfo;
            string _user = PH.Platform.Common.SysParamHelper.Instance.UserID;
            QuatationListForm _prefrm = this.PrevForm as QuatationListForm;

            if (IsNew)
            {
                _qi.CreateBy = _user;
                _qi.CreateTime = DateTime.Now;
                _qi.Factory = _prefrm.Factory;
            }
            else
            {
                _qi.UpdateBy = _user;
                _qi.UpdateTime = DateTime.Now;
            }

            _qi.Vendor = this.edtVendor.Text;

            if (ckActive.Checked)
            {
                RAPLQDataContext _rapdc = this.DataContext as RAPLQDataContext;
                string _sqlstr = string.Format("update machine set vndr='{0}',Manufacturer='{1}' where factory='{2}' and type1='{3}'",
                    _qi.Vendor, _qi.Manufacturer, _qi.Factory, _qi.TypeCode);

                _rapdc.ExecuteNonQuery(_sqlstr);
                //var _machines = _rapdc.Machines.Where(p => p.Factory == _qi.Factory && p.Type1 == _qi.TypeCode);
                //foreach (var mc in _machines)
                //{
                //    mc.Vndr = _qi.Vendor;
                //    mc.Manufacturer = _qi.Manufacturer;
                //}
                // _rapdc.SubmitChanges();
            }



            base.SaveCurrent();


            }


        private void BindCurrency()
        {
            BasicInfoDataContext _ctx = ContextBuilder.CreateContext<BasicInfoDataContext>();
            cmbCurrency.Properties.Items.Clear();
            cmbCurrency.Properties.Items.AddRange(_ctx.Currencies.Select(p => p.Currency1).ToArray());
        }

        private void BindUsingDept()
        {
            RAPLQDataContext _rapdc = this.DataContext as RAPLQDataContext;
            var _depts = _rapdc.BaseCodes.Where(p => p.Type == "DPTUS");
            ccbDeptUse.Properties.Items.Clear();
            ccbDeptUse.Properties.Items.Add("ALL");
            foreach (var item in _depts)
                //cbbCust.Properties.Items.AddRange(_dicts["Customer"]);
                //cbbCust.Properties.Items.Add(_dicts["Customer"][m]);
                ccbDeptUse.Properties.Items.Add(item.Name);

        }

        private void ccbDeptUse_CustomDisplayText(object sender, DevExpress.XtraEditors.Controls.CustomDisplayTextEventArgs e)
        {
            //List<object> _lst = ccbDeptUse.getc..Items.GetCheckedValues();
            //if (_lst.Count == ccbDeptUse.Properties.Items.Count)
            //    e.DisplayText = "ALL";
        }

        private void edtVendor_EditValueChanged(object sender, EventArgs e)
        {
            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            string Str = db.Vendors.FirstOrDefault(p => p.Code == this.edtVendor.EditValue.ToString()).Manufacturer;

            this.txtManufacture.Properties.Items.Clear();
            if (!string.IsNullOrEmpty(Str))
            {
                string[] manufacturers = Str.Split(new string[] { "/ ", "/" }, StringSplitOptions.RemoveEmptyEntries);
                this.txtManufacture.Properties.Items.AddRange(manufacturers);

            }

        }
    }
}
