using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.MasterDB
{
    public partial class CrossCupGroupDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CrossCupGroupDetailForm()
        {
            InitializeComponent();
        }

        private void suppRefButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectSuppRefForm frmSelectSuppRef = new SelectSuppRefForm();
            if (frmSelectSuppRef.ShowDialog() == DialogResult.OK)
            {
                CrossCupGroup obj = BindingSource.Current as CrossCupGroup;
                obj.SuppRef = frmSelectSuppRef.GetSelectedSuppRef();
                this.BindingSource.EndEdit();
            }

        }
    }
}
