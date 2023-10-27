using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.LWPM.UI.MC;

namespace PH.LWPM.UI.WF
{
    public partial class FrmCopyMc : Form
    {
        RAPLQDataContext CurContext;
        string CurFac = "";
        McPListFrm_Projection ParentForm;

        public FrmCopyMc(RAPLQDataContext ctx, string fac, McPListFrm_Projection parentobj)
        {
            InitializeComponent();
            CurContext = ctx;
            CurFac =fac;
            ParentForm = parentobj;
            cmbFac.Text = fac;
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            string _fac =cmbFac.Text.Trim();
            string _id =edtWk.Text.Trim();
            PH.LWPM.BO.Machine _mc =CurContext.Machines.Where(p => p.Factory == _fac && p.Id == _id).FirstOrDefault();
            if (string.IsNullOrEmpty(_id))
            { 
                MessageBox.Show("Machine ID不可為空!");
                return;
            }
            else if (_id.Length > 15)
            {
                MessageBox.Show("Machine ID長度不得超過20位!");
                return;
            }
            else if (_mc != null)
            {
                string _msg = string.Format("當前工廠{0}中,此Machine ID:{1}己存在,請重新填寫ID或選擇其它工廠再嘗試 !", _fac, _id);
                MessageBox.Show(_msg);
                return;
            }
            else
            {
                ParentForm.DesFactory = _fac;
                ParentForm.DestId = _id;
            }
        }
    }
}
