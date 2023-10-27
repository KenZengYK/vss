using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class QuatationPivotTableForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public QuatationPivotTableForm()
        {
            InitializeComponent();

            var db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = db;
            this.bindingSource.DataSource = db.QuatationInfos.OrderBy(p => p.VendorCode).ThenBy(p => p.Manufacturer).ThenBy(p => p.TypeCode);
        }


    }
}
