using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class ReturnItemList : ListForm
    {
        public List<ByPiece_ReturnItem> ImportList = new List<ByPiece_ReturnItem>();
        public ReturnItemList()
        {
            InitializeComponent();
        }

        public int Flag;
        public ReturnItemList(string Flag) 
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "AddReturnNews");
            this.barBtnImport.Enabled = obj != null;
            this.HandMovement.Enabled = obj != null;
        }


        public override void DataBind()
        {
            base.DataBind();
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();

            this.DataContext = context;
            this.DataSource = (from m in context.ByPiece_ReciveItems where m.Flag==this.Flag  select m).Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            param.BoType = typeof(ByPiece_ReturnItem);
            param.WarnRecord = 1000;

            this.barBtnAddNew.Enabled = false;
            this.barBtnOpen.Enabled = false;

            this.StartEnquiry(param);
        }

        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            DialogResult dlg =MessageBox.Show("確定要刪除選中的數據嗎?", "刪除確認", MessageBoxButtons.OKCancel);
            if (dlg == DialogResult.Cancel)
                return;

            PHGDB2DataContext _ctx = this.DataContext as PHGDB2DataContext;
            Dictionary<int, ByPiece_ReturnItem> _dict = this.GetCheckData<ByPiece_ReturnItem>();
            foreach (var item in _dict)
            {
                _ctx.ByPiece_ReturnItems.DeleteOnSubmit(item.Value);
                this.BindingSource.Remove(item.Value);
            }
            _ctx.SubmitChanges();
            objListGridControl.DataSource = this.BindingSource;
        }

        private void barBtnImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            FrmDateRange frm = new FrmDateRange(3, this,this.Flag);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {

                (this.DataContext as PHGDB2DataContext).ByPiece_ReturnItems.AttachAll(ImportList);
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = ImportList;


                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();


                // objListGridControl.RefreshDataSource();
                //this.DataSource = ImportList;
            }
        }

        private void HandMovement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            HandMovement_Ret frm = new HandMovement_Ret(this,this.Flag);
            frm.StartPosition = FormStartPosition.CenterParent;        
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = ImportList;

                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();

            }
        }
    }
}
