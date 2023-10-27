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
    public partial class FrmLotIdFromToInputter : DevExpress.XtraEditors.XtraForm
    {
        public FrmLotIdFromToInputter(string initFromLotID, string initToLotID, string initCompanyNo)
        {
            InitializeComponent();
            this.ActiveControl = teCompanyNo;
            teCompanyNo.Text = initCompanyNo;
            teFromLotId.Text = initFromLotID;
            teToLotId.Text = initToLotID;

            teCompanyNo.SelectAll();
        }


        public static bool ShowLotIdFromToInputter(ref string initFromLotID, ref string initToLotID, ref string initCompanyNo)
        {

            try
            {
                FrmLotIdFromToInputter frmLotIdFromToInputter = new FrmLotIdFromToInputter(initFromLotID, initToLotID, initCompanyNo);
                DialogResult result = frmLotIdFromToInputter.ShowDialog();
                if (result == DialogResult.OK)
                {
                    initFromLotID = frmLotIdFromToInputter.teFromLotId.Text.Trim();
                    initToLotID = frmLotIdFromToInputter.teToLotId.Text.Trim();
                    initCompanyNo = frmLotIdFromToInputter.teCompanyNo.Text.Trim();
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the Lot ID Inputter form  \n" + ex.Message);
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