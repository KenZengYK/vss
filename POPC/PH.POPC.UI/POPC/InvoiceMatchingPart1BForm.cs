using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

using System.Linq;


namespace PH.POPC.UI.POPC
{
    public partial class InvoiceMatchingPart1BForm : DevExpress.XtraEditors.XtraForm
    {
        public InvoiceMatchingPart1BForm(string tips, PH.POPC.BO.CompareTypeI comType)
        {
            InitializeComponent();

            this.lbTips.Text = tips;
            this.btnINV2DN.Enabled = comType == PH.POPC.BO.CompareTypeI.INV2DN;
            this.btnINV2DNs.Enabled = comType == PH.POPC.BO.CompareTypeI.INV2DNs;
        }



    }
}