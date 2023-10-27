using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Setup
{
    public partial class ProductTypeDetailForm : ParentChildForm
    {
        public ProductTypeDetailForm()
        {
            InitializeComponent();
        }


        /// <summary>
        /// 數據綁定相應的數據。
        /// </summary>
        public override void DataBind()
        {
            base.DataBind();
            QC_ProductTypeInfo pti = (this.BindingSource.Current as QC_ProductTypeInfo);
            pti.CurrentDataContext = this.DataContext;
          
            this.productDefectList1.BindingSource.DataSource = pti.QC_ProductType_CommonDefects;
            this.productPostionList1.BindingSource.DataSource = pti.QC_ProductType_CommonPositions;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            edtCreateUser.Enabled = false;
            deCreateDate.Enabled = false;
            edtAlterUser.Enabled= false;
            deAlterDate.Enabled = false;
        }

        protected override void SaveCurrent()
        {
            QC_ProductTypeInfo _current = (this.BindingSource.Current as QC_ProductTypeInfo);
            string _userid = PH.Platform.Common.SysParamHelper.Instance.UserID;
            if (this.IsNew)
            {
                _current.CreateUser = _userid;
                _current.CreateDate = DateTime.Now;
            }
            if (this.IsEditting)
            {
                _current.AlterUser = _userid;
                _current.AlterDate = DateTime.Now;
            
            }
            base.SaveCurrent();
        }
    }
}
