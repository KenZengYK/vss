using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace PH.MIDc.UI
{
    public partial class SelectMIDcPriceForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectMIDcPriceForm(object datasource)
        {
            InitializeComponent();
            _datasource = datasource;
            this.materialPriceBindingSource.DataSource = _datasource;
            this.gridControl1.DataSource = this.materialPriceBindingSource;
        }

        object _datasource;

        public PH.MIDc.BO.MaterialPrice MaterialPrice
        {
            get { return (PH.MIDc.BO.MaterialPrice)this.materialPriceBindingSource.Current; }
        }
    }
}