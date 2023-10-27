using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class InputLineNumber : XtraForm
    {
        public InputLineNumber(WorkOrder wo)
        {
            InitializeComponent();
            WO = wo;
        }
        private WorkOrder _wo;
        public WorkOrder WO
        {
            get { return _wo; }
            set
            {
                _wo = value;
                SetValueToEditor();
            }
        }
        private void SetValueToEditor()
        {
            this.editLineDef.EditValue = _wo.Line_Default;
            this.editEFFDef.EditValue = _wo.EFF_Default;
            this.editCUDef.EditValue = _wo.CU_Default;
            this.editWF.EditValue = _wo.WF;
            this.editSAH.EditValue = _wo.Line_SAH;

            this.editNumberOfLine.EditValue = _wo.NumberOfLine;
            this.editEFF.EditValue = _wo.EFF;
            this.editCU.EditValue = _wo.CU;
        }
        public decimal LineNumber
        {
            get
            {
                return Convert.ToDecimal(this.editNumberOfLine.EditValue);
            }
        }
        public double EFF
        {
            get
            {
                return Convert.ToDouble(this.editEFF.EditValue);
            }
        }
        public double CU
        {
            get
            {
                return Convert.ToDouble(this.editCU.EditValue);
            }
        }


        //--------------------------------------------------------------------------------------------
        //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  begin ---
        //--------------------------------------------------------------------------------------------
        public double WF
        {
            get
            {
                return string.IsNullOrEmpty(this.editWF.Text) ? 0 : Convert.ToDouble(this.editWF.Text);
            }
        }

        public double SAH
        {
            get
            {
                return string.IsNullOrEmpty(this.editSAH.Text) ? 0 : Convert.ToDouble(this.editSAH.Text);
            }
        }
        //--------------------------------------------------------------------------------------------
        //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19 end ---
        //--------------------------------------------------------------------------------------------


        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.LineNumber == 0)
            {
                MessageBox.Show("No. of Line needed must greater than 0.");
                this.editNumberOfLine.Focus();
                return;
            }

            //--------------------------------------------------------------------------------------------
            //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  begin ---
            //--------------------------------------------------------------------------------------------
            if (this.WF == 0)
            {
                MessageBox.Show("Please input WF(LB3).", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            //if (this.SAH == 0)
            //{
            //    MessageBox.Show("Please input line SAH.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            //    return;
            //}
            //--------------------------------------------------------------------------------------------
            //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  end ---
            //--------------------------------------------------------------------------------------------


            this.DialogResult = DialogResult.OK;
        }

        private void btnReGet_Click(object sender, EventArgs e)
        {
            WO.GetIEBInfor();
            SetValueToEditor();

            //--------------------------------------------------------------------------------------------
            //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  begin ---
            //--------------------------------------------------------------------------------------------
            this.editWF.Properties.ReadOnly = this.WF != 0;
            this.editSAH.Properties.ReadOnly = this.SAH != 0;
            //--------------------------------------------------------------------------------------------
            //新增CL廠后，WF和SAH因沒有數據取不到，所以放到給用戶手填，由daivd增加，2018-10-19  end ---
            //--------------------------------------------------------------------------------------------
        }
    }
}
