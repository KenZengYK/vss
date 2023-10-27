using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;

namespace PH.BasicInfo.UI
{
    public partial class CustomerDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CustomerDetailForm()
        {
            InitializeComponent();
          
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            PH.Platform.AuthMgr.BO.Auth_FunRight auth = new Auth_FunRight();
            auth.AddFunRight(this.MenuID, "barBtnEdit", "Edit");

            IList<PH.Platform.AuthMgr.BO.Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID);

            if (Rightlist.Where(p => p.FunRight == "barBtnEdit").FirstOrDefault() != null)
            {
                this.barBtnDel.Enabled = this.barBtnEdit.Enabled = true;

            }
            else
            {
                this.barBtnDel.Enabled = this.barBtnEdit.Enabled = false;

            }

        }      

      }
}
