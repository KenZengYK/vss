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
    public partial class HandMovement_Rec : Form
    {
        public HandMovement_Rec()
        {
            InitializeComponent();
            
           
        }

        object ParentObj;
        public int Flag;
        public HandMovement_Rec(object parent, int Flag)
        {
            InitializeComponent();
            ParentObj = parent;
            this.Flag = Flag;
        }


        private void button2_Click(object sender, EventArgs e)
        {
            txtDT_Recive.Text = "";
            txtHDONO.Text = "";
            txtIDNUM.Text = "";
            txtMaterialType.Text = "";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (CheckText())
            {
                string UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                int i = DataHelper.Insert_Rec(txtDT_Recive.DateTime, txtMaterialType.Text, txtHDONO.Text, Convert.ToInt16(txtIDNUM.Text), UserID, DateTime.Now, this.Flag);
                if (i > 0)
                {
                    PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
                    var item1 = context.ByPiece_ReciveItems.Where(p => p.IsManualInput == true && p.Flag == this.Flag).ToList();
                    List<ByPiece_ReciveItem> _list = new List<ByPiece_ReciveItem>();
                    foreach (var item in item1)
                    {
                        ByPiece_ReciveItem item2 = new ByPiece_ReciveItem();
                        item2.DT_Recive = item.DT_Recive;
                        item2.MaterialType = item.MaterialType;
                        item2.ReciveItemId = item.ReciveItemId;
                        item2.IDNUM = item.IDNUM;
                        item2.HDONO = item.HDONO;
                        item2.OpMan = item.OpMan;
                        item2.OpDate = item.OpDate;
                        item2.IsManualInput = item.IsManualInput;
                        item2.Flag = item.Flag;
                        _list.Add(item2);
                    }

                    (ParentObj as ReciveItemList).ImportList = _list;
                    MessageBox.Show("修改成功！");
                    this.DialogResult = DialogResult.OK;

                    this.Close();

                }
                else { MessageBox.Show("修改失敗！"); }
            }
        }



        bool CheckText()
        {
            if (string.IsNullOrEmpty(this.txtDT_Recive.Text))
            {
                this.txtDT_Recive.Focus();
                MessageBox.Show("請選擇收料日期!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtMaterialType.Text))
            {
                this.txtMaterialType.Focus();
                MessageBox.Show("請輸入物料類型!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtHDONO.Text))
            {
                this.txtHDONO.Focus();
                MessageBox.Show("請輸入HDO No!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else if (string.IsNullOrEmpty(this.txtIDNUM.Text))
            {
                this.txtIDNUM.Focus();
                MessageBox.Show("請輸入數量!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            else { return true; }
        }

    }
}
