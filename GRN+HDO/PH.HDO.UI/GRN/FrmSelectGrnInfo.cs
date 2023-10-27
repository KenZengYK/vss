using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Collections;

namespace PH.HDO.UI
{
    public partial class FrmSelectGrnInfo : DevExpress.XtraEditors.XtraForm
    {
        ArrayList CurList = new ArrayList();
        public GRNNoHDOFrom ParList;
        public FrmSelectGrnInfo(ArrayList GrnList)
        {
            InitializeComponent();
            CurList = GrnList;
            CreateCheckList();
        }

        private void CreateCheckList()
        {
            //cklist.DataSource = CurList;
            //cklist.DisplayMember
            cklist.Items.Clear();
            for (int i = 0; i < CurList.Count; i++)
            {
                //DevExpress.XtraEditors.CheckEdit cb = new DevExpress.XtraEditors.CheckEdit();
                //cb.Text = CurList[i].ToString();               
                cklist.Items.Add(CurList[i]);

            }
        }

        private ArrayList GetCheckedList()
        {
            ArrayList _chklst = new ArrayList();
            for (int j = 0; j < cklist.Items.Count; j++)
            {
                if (cklist.Items[j].CheckState == CheckState.Checked)
                    _chklst.Add(int.Parse(cklist.Items[j].Value.ToString()));
            }
            return _chklst;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            ParList.SelectGrnList = GetCheckedList();
            this.Close();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}