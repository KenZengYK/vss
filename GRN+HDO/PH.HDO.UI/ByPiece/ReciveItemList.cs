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
    public partial class ReciveItemList : ListForm
    {


        public List<ByPiece_ReciveItem> ImportList = new List<ByPiece_ReciveItem>();

        public ReciveItemList()
        {
            InitializeComponent();
        }

        public int Flag;
        public ReciveItemList(string Flag)
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
        }


        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "AddReciveNews");
            this.barBtnImport.Enabled = obj != null;
            this.HandMovement.Enabled = obj != null;
        }

        public override void DataBind()
        {
            base.DataBind();
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            //MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr);

            this.DataContext = context;
            this.DataSource = (from m in context.ByPiece_ReciveItems where m.Flag==this.Flag select m).Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            param.BoType = typeof(ByPiece_ReciveItem);
            param.WarnRecord = 1000;

          //  param.FixedWherePart = Flag == "A" ? "QCType='Part' and QCRoleCode='MobileQC_MQA'" : "QCType='Part' and QCRoleCode='MobileQC_MQC'";
            this.barBtnAddNew.Enabled = false;
            this.barBtnOpen.Enabled = false;

            this.StartEnquiry(param);
        }


        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            DialogResult dlg = MessageBox.Show("確定要刪除選中的數據嗎?", "刪除確認", MessageBoxButtons.OKCancel);
            if (dlg == DialogResult.Cancel)
                return;

            PHGDB2DataContext _ctx = this.DataContext as PHGDB2DataContext;
            Dictionary<int, ByPiece_ReciveItem> _dict = this.GetCheckData<ByPiece_ReciveItem>();
            foreach (var item in _dict)
            {
                _ctx.ByPiece_ReciveItems.DeleteOnSubmit(item.Value);
                this.BindingSource.Remove(item.Value);
            }
            _ctx.SubmitChanges();
            objListGridControl.DataSource = this.BindingSource;
        }


        
        private void barBtnImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmDateRange frm = new FrmDateRange(1,this,this.Flag);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {
                
                (this.DataContext as PHGDB2DataContext).ByPiece_ReciveItems.AttachAll(ImportList);
                this.BindingSource.DataSource  = null;
                this.BindingSource.DataSource = ImportList;


                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();
                
               // objListGridControl.RefreshDataSource();
                 //this.DataSource = ImportList;
            }
        }

        private void HandMovement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            HandMovement_Rec frm = new HandMovement_Rec(this,this.Flag);
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
