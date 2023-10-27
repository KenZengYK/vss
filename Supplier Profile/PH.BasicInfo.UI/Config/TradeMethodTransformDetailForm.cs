using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Config
{
    public partial class TradeMethodTransformDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public TradeMethodTransformDetailForm()
        {
            InitializeComponent();
            InitCtrl();
        }

        private void InitCtrl()
        {
            TradeMethodList tl = new TradeMethodList();
            this.tradeMethodFromLookUpEdit.Properties.DataSource = tl.GetAllTradeMethod();
            this.tradeMethodTOLookUpEdit.Properties.DataSource = tl.GetAllTradeMethod();
        }


        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.tradeMethodFromDescTextEdit.Properties.ReadOnly = true;
            this.tradeMethodTODescTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.creatUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
        }

        protected override void OnClickSave()
        {
            PH.BasicInfo.BO.TradeMethodTransform bo=this.BindingSource.Current as  PH.BasicInfo.BO.TradeMethodTransform;
            if(bo==null ) return;
            if (!CheckInput(bo)) return;
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                bo.CreatUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                bo.CreateDate = DateTime.Now;
            }
            else
            {
                bo.AlterUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                bo.AlterDate = DateTime.Now;
            }

            base.OnClickSave();
        }

        private bool CheckInput(PH.BasicInfo.BO.TradeMethodTransform BO)
        {
            if (BO.CustomerCode == null || BO.CustomerCode.Trim() == "")
            {
                MessageBox.Show("CustomerCode 不能為空!", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.customerCodeTextEdit.Focus();
                return false;
            }

            if (BO.TradeMethodFrom == null || BO.TradeMethodFrom.Trim() == "")
            {
                MessageBox.Show("TradeMethodFrom 不能為空!", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.tradeMethodFromLookUpEdit.Focus();
                return false;
            }

            if (BO.TradeMethodTO == null || BO.TradeMethodTO.Trim() == "")
            {
                MessageBox.Show("TradeMethodTO 不能為空!", "必輸提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.tradeMethodTOLookUpEdit.Focus();
                return false;
            }

            return true;
        }

    }
}
