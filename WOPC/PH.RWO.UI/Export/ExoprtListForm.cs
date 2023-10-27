using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;

using PH.RWO.BO;

using PH.Platform.UI.CS.PivotGrid;
using PH.Platform.BO.PivotTable;
using PH.Platform.BO;


namespace PH.RWO.UI
{
    public partial class ExportListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ExportListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.DataSource = context.View_Exports;
            this.DataContext = context;

        }
    }
}
