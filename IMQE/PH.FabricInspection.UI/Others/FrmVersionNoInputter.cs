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
    public partial class FrmVersionNoInputter : DevExpress.XtraEditors.XtraForm
    {
        public string currentValue = "";

        public FrmVersionNoInputter()
        {
            InitializeComponent();
        
        }
        public FrmVersionNoInputter(string versionID)
        {
            InitializeComponent();
            this.ActiveControl = teVersionID;
            teVersionID.Text = versionID;
            teVersionID.SelectedText = teVersionID.Text;
            teVersionID.SelectAll();

        }

        private void sbOk_Click(object sender, EventArgs e)
        {
            currentValue = teVersionID.Text.Trim();

            if (currentValue == "")
            {
                MessageBox.Show("Please Version No.");
            }


            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void sbCancel_Click(object sender, EventArgs e)
        {

            this.DialogResult = DialogResult.Cancel;
            this.Close();
        }



    }
}