using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.FabricInspection.UI
{
    public partial class FrmSelectDataInputter : DevExpress.XtraEditors.XtraForm
    {
        public FrmSelectDataInputter(string initFromSystemNo, string initToSystemNo, string initFromItemNo, string initToItemNo, string initFromLotID, string initToLotID)
        {
            InitializeComponent();

            teFromSystemNo.Text = initFromSystemNo;
            teToSystemNo.Text = initToSystemNo;
            teFromItemNo.Text = initFromItemNo;
            teToItemNo.Text = initToItemNo;
            teFromLotId.Text = initFromLotID;
            teToLotId.Text = initToLotID;

          
        }


        public static bool ShowSelectDateInputter(ref string initFromSystemNo, ref string initToSystemNo, ref string initFromItemNo, ref string initToItemNo, ref string initFromLotID, ref string initToLotID)
        {

            try
            {
                FrmSelectDataInputter FrmSelectDataInputter = new FrmSelectDataInputter(initFromSystemNo, initToSystemNo, initFromItemNo, initToItemNo, initFromLotID, initToLotID);
                DialogResult result = FrmSelectDataInputter.ShowDialog();
                if (result == DialogResult.OK)
                {
                    initFromSystemNo = FrmSelectDataInputter.teFromSystemNo.Text.Trim();
                    initToSystemNo = FrmSelectDataInputter.teToSystemNo.Text.Trim();
                    initFromItemNo = FrmSelectDataInputter.teFromItemNo.Text.Trim();
                    initToItemNo = FrmSelectDataInputter.teToItemNo.Text.Trim();
                    initFromLotID = FrmSelectDataInputter.teFromLotId.Text.Trim();
                    initToLotID = FrmSelectDataInputter.teToLotId.Text.Trim();
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Select Data Inputter form  \n" + ex.Message);
            }
            return false;
        }

        private void sbOk_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;

        }

        private void sbCancel_Click(object sender, EventArgs e)
        {

            this.DialogResult = DialogResult.Cancel;

        }



    }
}