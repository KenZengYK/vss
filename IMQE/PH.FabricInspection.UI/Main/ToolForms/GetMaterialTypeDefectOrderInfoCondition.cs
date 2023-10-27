using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI
{
    public partial class GetMaterialTypeDefectOrderInfoCondition : Form
    {
        #region 屬性

        ///// <summary>
        ///// Xsj：物料類別
        ///// </summary>
        //public List<string> MaterialTypeList
        //{
        //    get;
        //    set;
        //}

        ///// <summary>
        ///// Xsj:選取的物料
        ///// </summary>
        //public string CurrMaterialType
        //{
        //    get
        //    {
        //        string currMaterialType = null;
        //        if (this.chkComboBoxEdit_MaterialType.EditValue != null)
        //        {
        //            currMaterialType = this.chkComboBoxEdit_MaterialType.EditValue.ToString();
        //        }
        //        return currMaterialType;
        //    }
        //    set
        //    {
        //        this.chkComboBoxEdit_MaterialType.EditValue = value;
        //    }
        //}

        /// <summary>
        /// Xsj:開始日期
        /// </summary>
        public DateTime? StartDate
        {
            get
            {
                DateTime? startDate = null;
                if (this.dateEdit_StartDate.EditValue != null)
                {
                    startDate = Convert.ToDateTime(this.dateEdit_StartDate.EditValue);
                }
                return startDate;
            }
            set
            {
                this.dateEdit_StartDate.EditValue = value;
            }
        }


        /// <summary>
        /// Xsj:開始日期
        /// </summary>
        public DateTime? EndDate
        {
            get
            {
                DateTime? endDate = null;
                if (this.dateEdit_EndDate.EditValue != null)
                {
                    endDate = Convert.ToDateTime(this.dateEdit_EndDate.EditValue);
                }
                else
                {
                    endDate = DateTime.Now;
                }
                return endDate;
            }
            set
            {
                this.dateEdit_EndDate.EditValue = value;
            }
        }

        public int? AuditTeam
        {
            get
            {
                if (string.IsNullOrEmpty(txtAuditTeam.Text))
                {
                    return null;
                }

                return Convert.ToInt32(txtAuditTeam.Text);
            }
        }

        #endregion 屬性

        public GetMaterialTypeDefectOrderInfoCondition()
        {
            InitializeComponent();
        }


        private void GetMaterialTypeDefectOrderInfoCondition_Load(object sender, EventArgs e)
        {
            //foreach (string item in MaterialTypeList)
            //{
            //    this.chkComboBoxEdit_MaterialType.Properties.Items.Add(item);
            //}
        }

        //Xsj:Canel動作
        private void sBtnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        //Xsj:Find動作
        private void sBtnOK_Click(object sender, EventArgs e)
        {
            //if (this.CurrMaterialType == null || this.CurrMaterialType.Trim() == "")
            //{
            //    MessageBox.Show("請選取物料類別!", "系統提示");
            //    return;
            //}
            //else 
            if (this.StartDate == null)
            {
                MessageBox.Show("入倉的開始日期不能為空!", "系統提示");
                return;
            }
            this.DialogResult = DialogResult.OK;
        }
    }
}
