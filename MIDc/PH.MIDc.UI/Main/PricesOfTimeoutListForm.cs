using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    /// <summary>
    /// Xsj20120922:該功能是應JaneLai的要求：為了可以跟進單價過期的價錢,現需要一份清單.請在MIDc的菜單里加入,每星期更新一次,放便同事查詢.謝謝!
    /// </summary>
    public partial class PricesOfTimeoutListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PricesOfTimeoutListForm()
        {
            InitializeComponent();

            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            //this.EditorTypeName = typeof(DetailDetailForm).FullName;

            //Xsj20120830:添加右鍵菜單從R/N Maintenance 跳到Information MaintenanceList <PH.Platform.AuthMgr.BO.Auth_UserRole>
            var userRolsList = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.Auth_UserRole;
            bool hasPriceViewRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator;
            foreach (var item in userRolsList)
            {
                var roleBORightList = item.Auth_Role.Auth_RoleBORight.Where(p => p.BO == "MaterialPrice");  
                if (roleBORightList != null && roleBORightList.Count() != 0)
                {
                    foreach (var roleBoRightItem in roleBORightList)
                    {
                        string auth = roleBoRightItem.BORight.Trim().ToLower();
                        switch (auth)
                        {
                            case "update":
                                hasPriceViewRight = true;
                                break;
                        }
                    }
                }
            }

            if (hasPriceViewRight)
            {
                if (this.objListGridControl.ContextMenu != null)
                {
                    this.objListGridControl.ContextMenu.MenuItems.Add(new MenuItem("SuppRef View", new EventHandler(GoSuppRefEditForm)));
                }
                else
                {
                    ContextMenu cMenu = new ContextMenu();
                    cMenu.MenuItems.Add(new MenuItem("SuppRef View", new EventHandler(GoSuppRefEditForm)));
                    this.objListGridControl.ContextMenu = cMenu;
                }
            }
            //---end
        }


        //設置右鍵跳轉菜單


        //Xsj20120830:右鍵菜單從R/N Maintenance 跳到Information Maintenance
        private void GoSuppRefEditForm(object Sender, EventArgs Args)
        {
            //DetailDetailForm DDform = new DetailDetailForm();            
            V_PricesOfTimeout priceOfTimeout = (V_PricesOfTimeout)this.BindingSource.Current;

            string suppRef = priceOfTimeout.SuppRef;

            PH.MIDc.BO.MIDcDataContext dc = this.DataContext as PH.MIDc.BO.MIDcDataContext;

            PH.MIDc.BO.Detail detail = dc.Details.Where(p => p.SuppRef == suppRef).FirstOrDefault();

            if (detail != null)
            {
                CreateProgramForm(typeof(PH.MIDc.UI.DetailDetailForm), "SuppRef - " + suppRef, true, new object[] { detail, dc }, null);
            }
            else
            {
                MessageBox.Show("當前行記錄的[Detail]可能已被刪除，請確認！", "資料丟失提示");
            }

        }

        public V_PricesOfTimeout CurrVPriceOfTimeOut
        {
            get
            {
                V_PricesOfTimeout currBo = null;
                if (this.BindingSource.Current != null)
                {
                    currBo = this.BindingSource.Current as V_PricesOfTimeout;
                }
                return currBo;
            }
        }

        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext dc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

            this.BindingSource.DataSource = dc.V_PricesOfTimeouts;

            this.DataContext = dc;


        }
    }
}
