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
    public partial class IsuueItemList : ListForm
    {

        public List<ByPiece_IssueItem_Text> ImportList = new List<ByPiece_IssueItem_Text>();
        public IsuueItemList()
        {
            InitializeComponent();
        }

        public int Flag;
        public IsuueItemList(string Flag)
        {
            InitializeComponent();

            this.Flag = Convert.ToInt32(Flag);
        }


        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "AddIssueNews");
            this.barBtnImport.Enabled = obj != null;
            this.HandMovement.Enabled = obj != null;
        }



        public override void DataBind()
        {
            base.DataBind();
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            
            this.DataContext = context;
            this.DataSource = (from m in context.ByPiece_IssueItem_Texts  where m.Flag==this.Flag  select m).Take(0);

            PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            param.BoType = typeof(ByPiece_IssueItem_Text);
            param.WarnRecord = 1000;

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
            Dictionary<int, ByPiece_IssueItem_Text> _dict = this.GetCheckData<ByPiece_IssueItem_Text>();
            foreach (var item in _dict)
            {
                _ctx.ByPiece_IssueItem_Texts.DeleteOnSubmit(item.Value);
                this.BindingSource.Remove(item.Value);
            }
            _ctx.SubmitChanges();
            objListGridControl.DataSource = this.BindingSource;
        }
        private void barBtnImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmDateRange frm = new FrmDateRange(2, this, this.Flag);
            frm.StartPosition = FormStartPosition.CenterParent;
            DialogResult dlg = frm.ShowDialog();
            if (dlg == DialogResult.OK)
            {

                (this.DataContext as PHGDB2DataContext).ByPiece_IssueItem_Texts.AttachAll(ImportList);
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = ImportList;

                objListGridControl.DataSource = this.BindingSource;
                objListGridControl.Refresh();
            }
        }

        private void HandMovement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            HandMovement_Isu frm = new HandMovement_Isu(this, this.Flag );
            frm.StartPosition = FormStartPosition.CenterParent;
            //frm.bindingSource1.DataSource = this.BindingSource.Current;
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
