using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class SelectItemCodeFormMIDc : DevExpress.XtraEditors.XtraForm
    {
        private IQueryable<PH.POPC.BO.V_MIDcMaterial> itemCodes;
        public PH.POPC.BO.V_MIDcMaterial MIDcMaterial;
        public SelectItemCodeFormMIDc(IQueryable<PH.POPC.BO.V_MIDcMaterial> itemCodes)
        {
            InitializeComponent();
            this.itemCodes = itemCodes;
            this.gridControl1.DataSource = itemCodes;

        }
        public SelectItemCodeFormMIDc(IQueryable<PH.POPC.BO.V_MIDcMaterial> itemCodes, bool bln)
        {
            InitializeComponent();
            this.gridColumn2.Visible = bln;
            this.itemCodes = itemCodes;
            this.gridControl1.DataSource = itemCodes;
        }

        private void but_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }



        private void but_Ok_Click(object sender, EventArgs e)
        {
            MySelect();
        }



        private void gridView1_DoubleClick(object sender, EventArgs e)
        {
            MySelect();
        }

        private void MySelect()
        {
            MIDcMaterial = this.gridView1.GetFocusedRow() as PH.POPC.BO.V_MIDcMaterial;
            if (MIDcMaterial == null) return;

            this.DialogResult = DialogResult.OK;
            this.Close();
            //if (this.gridView1.FocusedRowHandle >= 0)
            //{
            //    string SupplierReference = this.gridView1.GetFocusedRowCellValue("SupplierReference").ToString();
            //    this.MIDcMaterial = this.itemCodes.Single(p => p.SupplierReference == SupplierReference);
            //    if (this.MIDcMaterial.ItemCode.Trim() == string.Empty)
            //    {
            //        MessageBox.Show("Invalid ItemCode");
            //        return;
            //    }

            //}
        }
    }
}



