using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.HDO.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.HDO.UI.Contract
{
    public partial class ContractSetting : ListForm
    {

        public List<ContractAttach> CurrentList = new List<ContractAttach>();

        public ContractSetting()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
           // DataListHelper helper = new DataListHelper();
            this.NeedCheckPermission = false;
            HDODataContext hdoctx = ContextBuilder.CreateContext<HDODataContext>();
            this.DataContext = hdoctx;
            this.BindingSource.DataSource = hdoctx.ContractInfos;
            this.EditorTypeName = typeof(ContractDetailA).FullName;
            base.DataBind();
            SetEnable();
        }


        private bool HasAuthority()
        {
            bool _hasauth = false;
            Auth_User _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            if (_user.IsAdministrator)
                _hasauth = true;
            else
            {
                foreach (Auth_UserRole aur in _user.Auth_UserRole)
                {
                    if (aur.Auth_Role.RoleName == "Custom Contract Maitainer")
                    {
                        _hasauth = true;
                    }
                }
            }
            return _hasauth;
        }

        private void SetEnable()
        {
            bool _hasauth = HasAuthority();
            this.barBtnAddNew.Enabled = _hasauth;
            this.barBtnOpen.Enabled = _hasauth;
            this.barBtnDel.Enabled = _hasauth;
        }
    }
}
