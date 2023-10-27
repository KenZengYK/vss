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
    public partial class HandMovement_Ret : Form
    {
        public HandMovement_Ret()
        {
            InitializeComponent();
        }

        object ParentObj;
        public int Flag;
        public HandMovement_Ret(object parent,int Flag)
        {
            InitializeComponent();
            ParentObj = parent;
            this.Flag = Flag;
        }

         private void button2_Click(object sender, EventArgs e)
        {
            txtDT_Return.Text = "";
            txtReturnNo.Text = "";
            txtIDNUM.Text = "";
            txtMaterialType.Text = "";          
        }

        private void button1_Click(object sender, EventArgs e)
         {
             if (CheckText())
             {
                 string UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                 int i = DataHelper.Insert_Ret(txtDT_Return.DateTime, txtMaterialType.Text, txtReturnNo.Text, Convert.ToInt16(txtIDNUM.Text), UserID, DateTime.Now, this.Flag);
                 if (i > 0)
                 {
                     PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
                     var item1 = context.ByPiece_ReturnItems.Where(p => p.IsManualInput == true  &&  p.Flag == this.Flag).ToList();
                     List<ByPiece_ReturnItem> _list = new List<ByPiece_ReturnItem>();
                     foreach (var item in item1)
                     {
                         ByPiece_ReturnItem item2 = new ByPiece_ReturnItem();
                         item2.DT_Return = item.DT_Return;
                         item2.ReturnItemId = item.ReturnItemId;
                         item2.MaterialType = item.MaterialType;
                         item2.IDNUM = item.IDNUM;
                         item2.ReturnNo = item.ReturnNo;
                         item2.OpMan = item.OpMan;
                         item2.OpDate = item.OpDate;
                         item2.IsManualInput = item.IsManualInput;
                         item2.Flag = item.Flag;
                         _list.Add(item2);
                     }

                     (ParentObj as ReturnItemList).ImportList = _list;
                     MessageBox.Show("修改成功！");
                     this.DialogResult = DialogResult.OK;
                     this.Close();

                 }
                 else { MessageBox.Show("修改失敗！"); }
             }
        }

        bool CheckText()
        {
            if (string.IsNullOrEmpty(this.txtDT_Return.Text)) 
            {
                this.txtDT_Return.Focus();
                MessageBox.Show("請選擇退料日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtMaterialType.Text)) 
            {
                this.txtMaterialType.Focus();
                MessageBox.Show("請輸入退料類型!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtReturnNo.Text)) 
            {
                this.txtReturnNo.Focus();
                MessageBox.Show("請輸入退料單號!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtIDNUM.Text))
            {
                this.txtIDNUM.Focus();
                MessageBox.Show("請輸入退料數量!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else { return true; }
        }
    }
}
