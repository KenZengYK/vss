using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SupplierProductRangeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SupplierProductRangeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(SupplierProductRangeDetailForm).FullName;
        }
        public override void DataBind()
        {
            base.DataBind();
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
        }
        
    }
}
