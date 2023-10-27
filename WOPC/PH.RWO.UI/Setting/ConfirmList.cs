using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;

using PH.RWO.BO;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.RWO.UI
{
    public partial class ConfirmList : PH.Platform.UI.CS.UI2.ListForm
    {
        public ConfirmList()
        {
            InitializeComponent();
            this.DataContext =ContextBuilder.CreateContext<RWOSOPCDataContext>();
            ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.GetList();
        }

        private void GetList()
        {
            this.BindingSource.DataSource = Global.GetRwoConfirmList();
        }

        private void ConfirmList_Load(object sender, EventArgs e)
        {
            this.objListGridView.OptionsBehavior.Editable = true;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Are you sure to confirm these round work order data?", "Confirm",MessageBoxButtons.YesNo, MessageBoxIcon.Information,MessageBoxDefaultButton.Button1) == DialogResult.Yes)
            {
                IList<PH.RWO.BO.View_RWO_ConfirmRight> list = this.BindingSource.DataSource as IList<PH.RWO.BO.View_RWO_ConfirmRight>;
                foreach (PH.RWO.BO.View_RWO_ConfirmRight vrc in (from c in list where c.Choice==true select c))
                {
                    ComfirmRoundWorkOrder(vrc);
                }
                this.GetList();
                this.BindingSource.ResetBindings(false);
            }
        }


        private string _users = string.Empty;
        private int[] _right = { 0, 0, 0, 0, 0 };
        private string _oa = string.Empty;
        private string _hkpur = string.Empty;
        private string _ppc = string.Empty;
        private string _top = string.Empty;
        private string _hkoa = string.Empty;
        private string _userlist = string.Empty;

        private void SetItemValueToCtrl(string factory, string customer, string rightitem)
        {
            _oa = string.Empty;
            _hkpur = string.Empty;
            _ppc = string.Empty;
            _top = string.Empty;
            _hkoa = string.Empty;
            _userlist = string.Empty;
            factory = factory.ToLower() == "shilong" ? "SL" : factory;
            factory = factory.ToLower() == "thai" ? "KB" : factory;
            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            var _rights = (from r in context.Rights
                           where r.Factory == factory && r.CustomerCode == customer
                           select r.Users).ToArray();
            var _rightitem = (from r in context.Rights
                              where r.Factory == factory && r.CustomerCode == customer && r.Item == rightitem
                              select r.Users).FirstOrDefault();
            string rights = string.Empty;
            foreach (string s in _rights)
            {
                rights = rights == string.Empty ? s : rights + "," + s;
            }
            if (rights != null)
            {

                string[] arr = rights.Split(',');
                foreach (string s in arr)
                {
                    _userlist = _userlist == string.Empty ? s : _userlist + "," + s;
                }

                #region  用於處理當前用戶有權可以提交的權限項目
                if (rightitem == "OA")
                {
                    _oa = _rightitem;
                    _right[0] = 1;
                }
                if (rightitem == "HKPUR")
                {
                    _hkpur = _rightitem;
                    _right[1] = 1;
                }
                if (rightitem == "PPC")
                {
                    _ppc = _rightitem;
                    _right[2] = 1;
                }
                if (rightitem == "TOP")
                {
                    _top = _rightitem;
                    _right[3] = 1;
                }
                if (rightitem == "HKOA")
                {
                    _hkoa = _rightitem;
                    _right[4] = 1;
                }
                #endregion


            }

        }



        /// <summary>
        /// 用於更新Confirm對應的信息.
        /// </summary>
        /// <param name="vrc"></param>
        private  void ComfirmRoundWorkOrder(PH.RWO.BO.View_RWO_ConfirmRight vrc)
        {
            if (!vrc.Choice)
            {
                return;
            }

            RWOSOPCDataContext context = this.DataContext as RWOSOPCDataContext;
            Auth_User u =PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser;
            var rwo = (from r in context.RoundWorkOrders
                                  where r.Company == vrc.Company && r.SalesOrderNo == vrc.SalesOrderNo && r.WorkOrderNo == vrc.WorkOrderNo && /* r.RoundNo == vrc.RoundNo && r.SalesOrderLine == vrc.SalesOrderLine &&*/ r.ColorCode == vrc.ColorCode
                                  select r).FirstOrDefault();
            if (rwo == null)
                return;

            var customer = (from c in context.CustomerCodes
                        where c.CustomerCode1 == rwo.WorkOrderColor.WorkOrder.Project.Customer
                        select c.Customer).FirstOrDefault();

            if (string.IsNullOrEmpty(vrc.SLOAConfirm))
            {
                SetItemValueToCtrl(rwo.WorkOrderColor.WorkOrder.Project.Factory, customer, "HKPUR");
                rwo.OAConfirm = u.UserName;
                rwo.OAConfirmDate = DateTime.Today;
                context.SubmitChanges();
                if (Global.IfAllProjectSLOAConfirmed(rwo))
                {
                    MailHelper.SendMail(rwo.Company, rwo.SalesOrderNo, rwo.WorkOrderNo, rwo.SalesOrderLine, Users.GetUserEmailList(_hkpur), Users.GetUserEmailList(_userlist));
                }
                return;
            }
            if (string.IsNullOrEmpty(vrc.HKPURConfirm))
            {
                SetItemValueToCtrl(rwo.WorkOrderColor.WorkOrder.Project.Factory, customer, "PPC");
                rwo.HeaderConfirm = u.UserName;
                rwo.HeaderConfirmDate = DateTime.Today;
                context.SubmitChanges();
                if (Global.IfAllProjectHKPURConfirmed(rwo))
                {
                    MailHelper.SendMail(rwo.Company, rwo.SalesOrderNo, rwo.WorkOrderNo, rwo.SalesOrderLine, Users.GetUserEmailList(_ppc), Users.GetUserEmailList(_userlist));
                }
                return;
            }
            if (string.IsNullOrEmpty(vrc.SLPMCConfirm))
            {
                SetItemValueToCtrl(rwo.WorkOrderColor.WorkOrder.Project.Factory, customer, "TOP");
                rwo.PPCConfirm = u.UserName;
                rwo.PPCConfirmDate = DateTime.Today;
                context.SubmitChanges();
                if (Global.IfAllProjectSLPMCConfirmed(rwo))
                {
                     MailHelper.SendMail(rwo.Company, rwo.SalesOrderNo, rwo.WorkOrderNo, rwo.SalesOrderLine, Users.GetUserEmailList(_top), Users.GetUserEmailList(_userlist));
                }
                return;
            }
            if (string.IsNullOrEmpty(vrc.SLTopMgtConfirm))
            {
                SetItemValueToCtrl(rwo.WorkOrderColor.WorkOrder.Project.Factory, customer, "HKOA");
                rwo.TopConfirm = u.UserName;
                rwo.TopConfirmDate = DateTime.Today;
                context.SubmitChanges();
                if (Global.IfAllProjectSLTOPMGTConfirmed(rwo))
                {
                    MailHelper.SendMail(rwo.Company, rwo.SalesOrderNo, rwo.WorkOrderNo, rwo.SalesOrderLine, Users.GetUserEmailList(_hkoa), Users.GetUserEmailList(_userlist));
                }
                return;
            }
            if (string.IsNullOrEmpty(vrc.HKOAConfirm))
            {
                //rwo.HKOAConfirm = u.UserName;
                //rwo.HKOAConfirmDate = DateTime.Today;
                context.SubmitChanges();
                return;
            }
            //}
            //context.SubmitChanges();
            //}
        }
    }
}
