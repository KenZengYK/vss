using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.Utils;

namespace PH.RWO.UI.RWO
{
    public partial class SelectRWOForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectRWOForm(WorkOrderColor woc)
        {
            InitializeComponent();

            this.rwoBindingSource.DataSource = woc.RoundWorkOrders;

        }

        public RoundWorkOrder RWO { get { return this.rwoBindingSource.Current as RoundWorkOrder; } }

    }
}