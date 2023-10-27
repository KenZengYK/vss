using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.PHGDB2.BO;
using System.Linq;

namespace PH.HDO.UI.ByPiece
{
    public partial class ELWFilteringMachineHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public int Flag;
        public ELWFilteringMachineHeaderListForm(string Flag)
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
        }

        public override void DataBind()
        {
            PH.PHGDB2.BO.PHGDB2DataContext dcon = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.ByPiece_ELWFilteringMachineHeaders.Where(dr=>dr.Flag == this.Flag);
            this.EditorTypeName = typeof(ELWFilteringMachineHeaderDetailForm).FullName;
            this.objListGridView.BestFitColumns();
            base.DataBind();
        }

    }
}