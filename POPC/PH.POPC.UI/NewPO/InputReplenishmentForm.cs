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
    public partial class InputReplenishmentForm : DevExpress.XtraEditors.XtraForm
    {
        public InputReplenishmentForm(PH.POPC.BO.POHeader po)
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

            #region Replenishment

            LookUpColumnInfoCollection cols;
            var cc = list.GetDataDictionary(BO.Common.ReplenishmentDictionary);
            this.ricbReplenishment.DataSource = cc;
            this.ricbReplenishment.DisplayMember = "DataCode";
            this.ricbReplenishment.ValueMember = "DataCode";
            cols = this.ricbReplenishment.Columns;
            LookUpColumnInfo lci = new LookUpColumnInfo("DataCode", "Code", 30);
            lci.Alignment = HorzAlignment.Center;
            cols.Add(lci);
            cols.Add(new LookUpColumnInfo("Description", "Description", 120));
            ricbReplenishment.PopupFormWidth = 500;
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
                if (string.IsNullOrEmpty(item.Replenishment))
                {
                    MessageBox.Show(string.Format("Must select a Replenishment for PO Line - {0}/{1}!", item.PONO, item.OrderLine), "Warning", MessageBoxButtons.OK);
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

        private void btnDefaultAll_Click(object sender, EventArgs e)
        {
            NormalAll();
        }
        private void NormalAll()
        {
            this.gridView1.BeginDataUpdate();
            try
            {
                int dataRowCount = this.gridView1.DataRowCount;
                for (int currentRowHandle = 0; currentRowHandle < dataRowCount; currentRowHandle++)
                {
                    PH.POPC.BO.PODetail currLot = gridView1.GetRow(currentRowHandle) as PH.POPC.BO.PODetail;
                    if (currLot == null) continue;

                    string s = "Normal";
                    currLot.Replenishment = "N";

                    this.gridView1.SetRowCellValue(currentRowHandle, this.colReplenishmentDesc, s);
                }
            }
            finally
            {
                this.gridView1.EndDataUpdate();
            }
        }

        private void ribeWO_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            SelectWO();
        }
        private void SelectWO()
        {
            PODetail d = this.bindingSource1.Current as PODetail;
            SelectWOForm frm = new SelectWOForm(d.ProjectNo);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                PH.RWO.BO.WorkOrder wo = frm.WO;
                if (wo == null) return;

                d.WorkOrderNo = wo.WorkOrderNo;
                this.gridView1.SetFocusedRowCellValue(this.colWorkOrderNo, d.WorkOrderNo);
            }
        }



    }
}