using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF
{
    public partial class FrmCopySelect : Form
    {
        RAPLQDataContext CurContext;
        string CurFac = "";
        WFPListFrm_Projection ParentForm;

        public FrmCopySelect(RAPLQDataContext ctx,string fac,WFPListFrm_Projection parentobj)
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
            PH.LWPM.BO.WorkForce _wk =CurContext.WorkForces.Where(p => p.Factory == _fac && p.Id == _id).FirstOrDefault();
            if (string.IsNullOrEmpty(_id))
            { 
                MessageBox.Show("員工ID不可為空!");
                return;
            }
            else if (_id.Length > 15)
            {
                MessageBox.Show("員工ID長度不得超過15位!");
                return;
            }
            else if (_wk != null)
            {
                string _msg = string.Format("當前工廠{0}中,此員工ID:{1}己存在,請重新填寫ID或選擇其它工廠再嘗試 !", _fac, _id);
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
