using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
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
    public partial class CurrencyListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public CurrencyListForm()
        {
            InitializeComponent();
            //設置ListForm的編輯介面。
            this.EditorTypeName = typeof(CurrencyDetailForm).FullName;
        }

        public override void DataBind()
        { 
            //在此設置DataSource和context。
            CurrenciesList cl = new CurrenciesList();
            this.DataContext = cl.CurrentDataContext;
            this.BindingSource.DataSource = cl.GetAllCurrencies();
            base.DataBind();
        }

        //public override void ProcessFunctionRight()
        //{
        //    base.ProcessFunctionRight();

        //    PH.Platform.AuthMgr.BO.Auth_FunRight Auth = new Auth_FunRight();
        //    Auth.AddFunRight(this.MenuID, "barBtnAddNew", "AddNew");

        //    IList<PH.Platform.AuthMgr.BO.Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID);  //"PH.BasicInfo.UI.CurrencyListForm"
        //    if (Rightlist.Where(p => p.FunRight == "barBtnAddNew").FirstOrDefault() != null)
        //    {
        //        this.barBtnDel.Enabled = this.barBtnAddNew.Enabled = true;
        //    }
        //    else
        //    {
        //        this.barBtnDel.Enabled = this.barBtnAddNew.Enabled = false;
        //    }
        //}      
    }
}
