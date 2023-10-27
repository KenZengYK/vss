using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.LWPM.UI.IRepository;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Data.Linq;

namespace PH.LWPM.UI.Repository
{
    public class WFPList : IWFPList
    {

        public virtual void Confirm(Barbtitem barbtitem,BindingSource bindingsource,DataContext context)
        {

            if (MessageBox.Show("Are you sure to confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                if (ConfirmByName(barbtitem, bindingsource))
                {
                    (context as RAPLQDataContext).SubmitChanges();
                    MessageBox.Show("confirm successfully");
                }
                else
                {
                    MessageBox.Show("You have successfully confirmed");
                }
            }
        }
        private bool ConfirmByName(Barbtitem arbtitem, BindingSource bindingsource)
        {
            bool result = false;
            var CurWorkforce = bindingsource.Current as PH.LWPM.BO.WorkForce;
            switch (arbtitem)
            {
                case Barbtitem.ImmHead:
                    {
                        if ((bindingsource.Current as PH.LWPM.BO.WorkForce).ConfirmName != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID)
                        {
                            CurWorkforce.ConfirmName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                            CurWorkforce.ConfirmDate = DateTime.Now;
                            result = true;
                        }
                        break;
                    }
                case Barbtitem.BedHead:
                    {
                        if ((bindingsource.Current as PH.LWPM.BO.WorkForce).ConfirmDeptHead != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID)
                        {
                            CurWorkforce.ConfirmDeptHead = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                            CurWorkforce.ConfirmDeptHeadDate = DateTime.Now;
                            result = true;
                         
                        }
                        break;
                    }
                case Barbtitem.HR:
                    {
                        if ((bindingsource.Current as PH.LWPM.BO.WorkForce).AuditedName != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID)
                        {
                            CurWorkforce.AuditedName = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                            CurWorkforce.AuditedDate = DateTime.Now;
                            result = true;
                        }
                        break;
                    }
            }
            return result;


        }
    }

    public class MCPList : IMFPList
    {
       
        public void Confirm(Barbtitem barbtitem, BindingSource bindingsource, DataContext context)
        {

            if (MessageBox.Show("Are you sure to confirm ?", "Ensure to confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                if (ConfirmByName(barbtitem, bindingsource))
                {
                    (context as RAPLQDataContext).SubmitChanges();
                    MessageBox.Show("confirm successfully");
                }
                else
                {
                    MessageBox.Show("You have successfully confirmed");
                }
            }
        }
        private bool ConfirmByName(Barbtitem arbtitem, BindingSource bindingsource)
        {
            bool result = false;
            var CurWorkforce = bindingsource.Current as PH.LWPM.BO.Machine;
            switch (arbtitem)
            {
                case Barbtitem.ImmHead:
                    {
                        if ((bindingsource.Current as PH.LWPM.BO.Machine).Confirm_1Name != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID)
                        {
                            CurWorkforce.Confirm_1Name = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                            CurWorkforce.Confirm_1Date = DateTime.Now;
                            result = true;
                        }
                        break;
                    }
                case Barbtitem.BedHead:
                    {
                        if ((bindingsource.Current as PH.LWPM.BO.Machine).Confirm_2Name != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID)
                        {
                            CurWorkforce.Confirm_2Name = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                            CurWorkforce.Confirm_2Date = DateTime.Now;
                            result = true;

                        }
                        break;
                    }
              
            }
            return result;


        }
    }

}
