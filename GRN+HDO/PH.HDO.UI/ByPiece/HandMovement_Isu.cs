using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class HandMovement_Isu : Form
    {
        public HandMovement_Isu()
        {
            InitializeComponent();
        }

        object ParentObj;
        public int Flag;
        public HandMovement_Isu(object parent, int Flag)
        {
            InitializeComponent();
            ParentObj = parent;
            this.Flag = Flag;
        }


        private void button2_Click(object sender, EventArgs e)
        {
            txtDT_Issue.Text = "";
            sAH_TypeComboBox.Text = "";
            txtIDNUM_M.Text = "";
            txtMaterialType.Text = "";
            txtProjCode.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (CheckText())
            {
                string UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

                int i = DataHelper.Insert_Isu(txtMaterialType.Text, txtProjCode.Text, Convert.ToDateTime(this.txtDT_Issue.DateTime.ToString("yyyy-MM-dd HH:mm:ss")), txtIDNUM_M.Text, sAH_TypeComboBox.Text, UserID, DateTime.Now, this.Flag);
                if (i > 0)
                {
                    PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
                    var item1 = context.ByPiece_IssueItem_Texts.Where(p => p.IsManualInput == true && p.Flag== this.Flag ).ToList();
                    List<ByPiece_IssueItem_Text> _list = new List<ByPiece_IssueItem_Text>();
                    foreach (var item in item1)
                    {
                        ByPiece_IssueItem_Text item2 = new ByPiece_IssueItem_Text();
                        item2.DT_Issue = item.DT_Issue;
                        item2.IssueItemId = item.IssueItemId;
                        item2.MaterialType = item.MaterialType;
                        item2.ProjCode = item.ProjCode;
                        item2.ISSUE_QTY = item.ISSUE_QTY;
                        item2.SAHType = item.SAHType;
                        item2.Remark = item.Remark;
                        item2.OpMan = item.OpMan;
                        item2.OpDate = item.OpDate;
                        item2.lot_id = item.lot_id;
                        item2.IsManualInput = item.IsManualInput;
                        item2.Flag = item.Flag;
                        _list.Add(item2);
                    }

                    (ParentObj as IsuueItemList).ImportList = _list;
                    MessageBox.Show("修改成功！");
                    this.DialogResult = DialogResult.OK;

                }
                else
                {
                    MessageBox.Show("修改失敗！");
                }
                this.Close();
            }
        }




        bool CheckText()
        {
            if (string.IsNullOrEmpty(this.txtDT_Issue.Text))
            {
                this.txtDT_Issue.Focus();
                MessageBox.Show("請選擇發料日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtMaterialType.Text))
            {
                this.txtMaterialType.Focus();
                MessageBox.Show("請輸入發料類型!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtProjCode.Text))
            {
                this.txtProjCode.Focus();
                MessageBox.Show("請輸入客戶編號!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtIDNUM_M.Text))
            {
                this.txtIDNUM_M.Focus();
                MessageBox.Show("請輸入數量!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else { return true; }
        }

    }
}
