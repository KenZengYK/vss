using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.HDO.UI.Contract
{
    public partial class ContractFullDetail : DetailForm
    {
        public ContractFullDetail()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();
           //   ContractFull cfi = this.BindingSource.Current as ContractFull;
            //  decimal _wight = cfi.GrnQty.GetValueOrDefault() * cfi.WeightHsCode.GetValueOrDefault();
              BindMaterial();
              BindContract();
              BindSupplier();

        }

        private void SetDisable()
        {
            dedUpdated.Enabled = false;
            dedCreated.Enabled = false;
            edtCreateBy.Enabled = false;
            edtUpdateBy.Enabled = false;
           // edtBG_Wegigh.Enabled = false;
            
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetDisable();
            if (this.IsNew)
                edtBG_Unit.Text = "KG";
          
        }
        BindingSource bs = new BindingSource();
        private void BindMaterial()
        {            
            bs.DataSource = DB.GetMaterialList();

            this.lueMaterial.Properties.Columns.Clear();

            this.lueMaterial.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("HsCode", "海關編碼", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterialName", "海關物料名稱", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

            lueMaterial.Properties.AutoSearchColumnIndex = 1;
            lueMaterial.Properties.DataSource = bs;
            lueMaterial.Properties.DisplayMember = "HsCode";
            lueMaterial.Properties.ValueMember = "HsCode";
        
        }

        List<ContractInfo> ContractList = new List<ContractInfo>();
        private void BindContract()
        {
            HDODataContext ctx = this.DataContext as HDODataContext;

            ContractList = ctx.ContractInfos.ToList();                       
            string[] _ary = ContractList.Select(p => p.ContractNo).ToArray();
            cmbContractNo.Properties.Items.Clear();
            cmbContractNo.Properties.Items.AddRange(_ary);                   
        }

        private void BindSupplier()
        {
            BasicInfoDataContext bictx = ContextBuilder.CreateContext<BasicInfoDataContext>();
            string[] _suppliers = bictx.SupplierProfiles.Where(c => c.SupplierName!=null&&c.SupplierName!="").Select(p => p.SupplierName).ToArray();
            cmbSupplier.Properties.Items.Clear();
            cmbSupplier.Properties.Items.AddRange(_suppliers); 

        }
            

        private void FillItem(string contract, string hscode)
        {
            edtItemNo.Text = "";
            if (ContractList.Count > 0)
            {
                ContractInfo cif =ContractList.Where(c => c.ContractNo==contract).FirstOrDefault();
                if (cif != null)
                {
                    ContractItem _item = cif.ContractItems.Where(p => p.HSCode == hscode).FirstOrDefault();
                    if (_item != null)
                        edtItemNo.Text = _item.BG_Item;
                }
            
            }
        }

        private string CheckInput()
        {
            string _msg = "success";
            if (deRecive.Text == "")
                _msg = "HK收貨日期不能為空!";

            if (lueMaterial.Text == "")
                _msg = "海關料號不能為空!";

            if (cmbContractNo.Text == "")
                _msg = "合同號不能為空!";

            if (this.edtPackNo.Text == "")
                _msg = "Packing No.不能為空!";


            if (edtbG_No.Text =="")
                _msg = "報關單不能為空!";

            decimal _weight=0;
            string _wstr = edtBG_Weight.Text.Trim();

            if (!decimal.TryParse(_wstr,out _weight))
                _msg = "報關重量輸入錯誤!";
            else
            {
                int _idx = _wstr.IndexOf('.');
                if (_idx>0&&_wstr.Substring(_idx + 1).Length > 2)
                    _msg = "報關重量小數位不能超過兩位!";
            
            }

            return _msg;

        }


        protected override void SaveCurrent()
        {

            string _msg = CheckInput();
            if (_msg != "success")
            {
                MessageBox.Show(_msg);
                return;
            }

            ContractFull cfi = this.BindingSource.Current as ContractFull;
            if (cfi == null)
                return;
            string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

            if (IsNew)
            {
                cfi.CreateBy = _user;
                cfi.Created = DateTime.Now;
            }
            else if (IsEditting)
            {
                cfi.UpdateBy = _user;
                cfi.Updated = DateTime.Now;
            }


            base.SaveCurrent();
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
        }

        private void lueMaterial_EditValueChanged(object sender, EventArgs e)
        {
            AttachMaterial _defect = bs.Current as AttachMaterial;
            object obj = lueMaterial.GetColumnValue("MaterialName");
            if (obj != null)
            {
                edtbG_Name.Text = lueMaterial.GetColumnValue("MaterialName").ToString();

                if (cmbContractNo.Text != "")
                    FillItem(cmbContractNo.Text.Trim(), lueMaterial.Text);
            }
        }

        private void bG_QtyTextEdit_Leave(object sender, EventArgs e)
        {
            //ContractFull cfi = this.BindingSource.Current as ContractFull;
            //if (cfi.WeightHsCode.HasValue)
            //{ 
            //    decimal _qty=0;
            //    bool _correct = decimal.TryParse(this.bG_QtyTextEdit.Text.Trim(),out _qty);
            //    if (_correct)
            //        edtBG_Weight.Text = String.Format("{0:0.00}", cfi.WeightHsCode * _qty);  
            //}
        }

        private void lblNote_Click(object sender, EventArgs e)
        {

        }

        private void cmbContractNo_EditValueChanged(object sender, EventArgs e)
        {

             AttachMaterial _curmaterial = bs.Current as AttachMaterial;
             if (lueMaterial.Text != "")
                // FillItem(cmbContractNo.Text, _curmaterial.HsCode);
                 FillItem(cmbContractNo.Text, lueMaterial.Text.Trim());
        }
    }
}
