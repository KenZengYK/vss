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
    public partial class SelectItemCodeForm : DevExpress.XtraEditors.XtraForm
    {
        private IQueryable<PH.POPC.BO.V_ItemCode> itemCodes;
        public PH.POPC.BO.V_ItemCode ItemCode;
        public SelectItemCodeForm(IQueryable<PH.POPC.BO.V_ItemCode> itemCodes)
        {
            InitializeComponent();
            this.itemCodes = itemCodes;
            this.gridControl1.DataSource = itemCodes;
            
        }
        public SelectItemCodeForm(IQueryable<PH.POPC.BO.V_ItemCode> itemCodes,bool bln)
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
            if (this.gridView1.FocusedRowHandle >= 0)
            {
                string SupplierReference = this.gridView1.GetFocusedRowCellValue("SupplierReference").ToString();
                this.ItemCode = this.itemCodes.Single(p => p.SupplierReference == SupplierReference);
                if (this.ItemCode.ItemCode.Trim() == string.Empty)
                {
                    MessageBox.Show("Invalid ItemCode");
                    return;
                }
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
        }
    }
}



