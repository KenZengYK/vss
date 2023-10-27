using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;

using PH.POPC.BO;
using PH.Platform.UI.CS.DataQuery;

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraEditors.Controls;
using PH.Platform.ExtendLibrary;

namespace PH.POPC.UI.NewPO
{
    public partial class InputItemClassCodeForm : DevExpress.XtraEditors.XtraForm
    {
        public InputItemClassCodeForm(PH.POPC.BO.POHeader po)
        {
            InitializeComponent();
            this._po = po;
            AssignDataToLookupEdit();
            //InitImageComb(this.imag_ClassCode, BO.Common.ClassCodeDictionary);
            this.bindingSource1.DataSource = this._po.PODetails;
        }
        PH.POPC.BO.POHeader _po;

        private void AssignDataToLookupEdit()
        {
            DicList list = new DicList();

            #region Class Code

            LookUpColumnInfoCollection cols;
            
            var cc = list.GetDataDictionary(BO.Common.ClassCodeDictionary);
            this.ricbClassCode.DataSource = cc;
            this.ricbClassCode.DisplayMember = "DataCode";
            this.ricbClassCode.ValueMember = "DataCode";
            cols = this.ricbClassCode.Columns;
            LookUpColumnInfo lci = new LookUpColumnInfo("DataCode", "Code", 30);
            lci.Alignment = HorzAlignment.Center;
            cols.Add(lci);
            cols.Add(new LookUpColumnInfo("Description", "Description", 120));
            ricbClassCode.PopupFormWidth = 500;

            #endregion

        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //string classCode = Convert.ToString(imag_ClassCode.EditValue);
            //if (string.IsNullOrEmpty(classCode))
            //{
            //    MessageBox.Show("Must select a Class Code!", "Warning", MessageBoxButtons.OK);
            //    imag_ClassCode.Focus();
            //    return;
            //}
            //_po.ClassCode = classCode;
            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

            foreach (var item in this._po.PODetails)
            {
                item.CurrentDataContext = this._po.CurrentDataContext;
                if (string.IsNullOrEmpty(item.ClassCode))
                {
                    MessageBox.Show(string.Format("Must select a Class Code for Item Code - {0}!",item.ItemCode), "Warning", MessageBoxButtons.OK);
                    return;
                }
            }
            PH.POPC.BO.POPCDataContext _context = this._po.CurrentDataContext as PH.POPC.BO.POPCDataContext;
            _context.SubmitChanges();
            //_po.Save();
            this.DialogResult = DialogResult.OK;
        }

        private void label1_DoubleClick(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }



        //Xsj:add at 20160121 by chandler to auto input class code from current row
        private void sBtn_MatchALL_Click(object sender, EventArgs e)
        {
            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

            PH.POPC.BO.PODetail currPODetail = this.bindingSource1.Current as PH.POPC.BO.PODetail;
            if (currPODetail == null)
            {
                MessageBox.Show("請選擇數據來源行，其他行的[ClassCode]將自動填充為選擇行的[ClassCode]值！", "請選擇行", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            foreach (PH.POPC.BO.PODetail item in this.bindingSource1.List)
            {
                if (item != currPODetail)
                {
                    item.ClassCode = currPODetail.ClassCode;
                }
            }

            if (this.gridView1.PostEditor())
            {
                this.gridView1.UpdateCurrentRow();
            }

        }



    }
}