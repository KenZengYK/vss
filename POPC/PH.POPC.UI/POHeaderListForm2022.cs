using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.POPC.BO;

namespace PH.POPC.UI
{
    public partial class POHeaderListForm2022 : PH.Platform.UI.CS.UI2.ListForm
    {
        public POHeaderListForm2022()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            POPCDataContext db = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            this.DataContext = db;
            this.DataContext.CommandTimeout = 8000;

            //            string SqlStr = @"select Supplier, PONO, Currency, Status from POHeader
            //where VersionFlag  = 1 and OrderDate >= '2022-01-01' and OrderDate < '2023-01-01' and Status <> '-1'";

            this.BindingSource.DataSource = db.POHeaders.Where(p =>
                (p.VersionFlag ?? false) == true && p.OrderDate >= Convert.ToDateTime("2022-01-01") && p.OrderDate < Convert.ToDateTime("2023-01-01")).ToList()
                .Where(p => p.IsOutStanding != "Cancelled" && p.SuppAmount > 10)
                .OrderBy(p => p.Supplier).ThenBy(p => p.PONO);
        }
    }
}
