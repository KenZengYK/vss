using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LineBalanceII.BO;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class OperDetailForm :DetailForm
    {
        public OperDetailForm()
        {
            InitializeComponent();
        }

        private void SetEnable()
        {
            this.edtCreateBy.Properties.ReadOnly = true;
            this.deCreateTime.Properties.ReadOnly = true;
            this.edtUpdateBy.Properties.ReadOnly = true;
            this.deUpdateTime.Properties.ReadOnly = true;
        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            SetEnable();
        }
        protected override void SaveCurrent()
        {
            string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            DateTime _dt = DateTime.Now;
            BondingOper bms = this.BindingSource.Current as BondingOper;
            if (bms == null)
                return;

            if (IsNew)
            {
                bms.CreateBy = _user;
                bms.CreateTime = _dt;
            }
            if (IsEditting)
            {
                bms.UpdateBy = _user;
                bms.UpdateTime = _dt;

            }
            base.SaveCurrent();
        }
    }
}
