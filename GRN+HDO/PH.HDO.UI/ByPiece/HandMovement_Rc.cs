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
    public partial class HandMovement_Rc : Form
    {
        public HandMovement_Rc()
        {
            InitializeComponent();
        }

         object ParentObj;
         public int Flag;
         public HandMovement_Rc(object parent, int Flag )
        {
            InitializeComponent();
            ParentObj = parent;
            this.Flag = Flag;
        } 

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (CheckText())
            {
                string UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                int i = DataHelper.Insert_Rc(dateRCDate.DateTime, textMaterialType.Text, textRCNO.Text, Convert.ToInt16(textNumber.Text), UserID, DateTime.Now,comboBox1.Text, this .Flag );
                if (i > 0)
                {
                    PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
                    var item1 = context.ByPiece_RCItems.Where(p => p.IsManualInput == true && p.Flag == this.Flag ).ToList();
                    List<ByPiece_RCItem> _list = new List<ByPiece_RCItem>();
                    foreach (var item in item1)
                    {
                        ByPiece_RCItem item2 = new ByPiece_RCItem();
                        item2.RCDate = item.RCDate;
                        item2.OID = item.OID;
                        item2.MaterialType = item.MaterialType;
                        item2.RCQty = item.RCQty;
                        item2.RCNO = item.RCNO;
                        item2.OpMan = item.OpMan;
                        item2.OpDate = item.OpDate;
                        item2.IsManualInput = item.IsManualInput;
                        item2.Lot_ID = item.Lot_ID;
                        item2.Flag = item.Flag;
                        _list.Add(item2);
                    }

                    (ParentObj as RCItemList).ImportList = _list;
                    MessageBox.Show("修改成功！");
                    this.DialogResult = DialogResult.OK;
                    this.Close();

                }
                else { MessageBox.Show("修改失敗！"); }
            }
        }

        


        bool CheckText()
        {
            if (string.IsNullOrEmpty(this.dateRCDate.Text))
            {
                this.dateRCDate.Focus();
                MessageBox.Show("請選擇退料日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.textMaterialType.Text))
            {
                this.textMaterialType.Focus();
                MessageBox.Show("請輸入退料類型!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.textRCNO.Text))
            {
                this.textRCNO.Focus();
                MessageBox.Show("請輸入退料單號!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.textNumber.Text))
            {
                this.textNumber.Focus();
                MessageBox.Show("請輸入數量!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else { return true; }
        }




        private void simpleButton2_Click(object sender, EventArgs e)
        {
            textMaterialType.Text = "";
            textRCNO.Text = "";
            dateRCDate.Text = "";
            textNumber.Text = "";
        }
    }
}
