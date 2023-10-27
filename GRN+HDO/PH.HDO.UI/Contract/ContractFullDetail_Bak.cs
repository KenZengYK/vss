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

namespace PH.HDO.UI.Contract
{
    public partial class ContractFullDetail_Bak : DetailForm
    {
        public ContractFullDetail_Bak()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            base.DataBind();
              ContractFull cfi = this.BindingSource.Current as ContractFull;
              decimal _wight = cfi.GrnQty.GetValueOrDefault() * cfi.WeightHsCode.GetValueOrDefault();
              edtWeight.Text = String.Format("{0:F}", _wight);
              edtPrice_PH.Text = cfi.UnitPrice;
              BindMaterial();

        }

        private void SetDisable()
        {
            dedUpdated.Enabled = false;
            dedCreated.Enabled = false;
            edtCreateBy.Enabled = false;
            edtUpdateBy.Enabled = false;
            edtWeight.Enabled = false;
            edtPrice_PH.Enabled = false;
            edtMaterial.Enabled = false;
            edtBG_Wegigh.Enabled = false;
            
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetDisable();
          
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

        protected override void SaveCurrent()
        {
            
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

            if (!string.IsNullOrEmpty(edtCost.Text))
                cfi.TotalCost = decimal.Parse(edtCost.Text);
            else
                cfi.TotalCost = cfi.Cost.GetValueOrDefault();

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
                edtMaterial.Text = lueMaterial.GetColumnValue("MaterialName").ToString();
                edtbG_Name.Text = edtMaterial.Text;

            }
        }

        private void bG_QtyTextEdit_Leave(object sender, EventArgs e)
        {
            ContractFull cfi = this.BindingSource.Current as ContractFull;
            if (cfi.WeightHsCode.HasValue)
            { 
                decimal _qty=0;
                bool _correct = decimal.TryParse(this.bG_QtyTextEdit.Text.Trim(),out _qty);
                if (_correct)
                    edtBG_Wegigh.Text = String.Format("{0:0.00}", cfi.WeightHsCode * _qty);  
            }
        }
    }
}
