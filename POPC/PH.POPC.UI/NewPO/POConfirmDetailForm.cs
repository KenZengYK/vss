using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    public partial class POConfirmDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public POConfirmDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            PH.POPC.BO.POConfirm posku = this.BindingSource.Current as PH.POPC.BO.POConfirm;
            if (posku.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                posku.HandleNo = posku.PODetail.POConfirms.Max(p => p.HandleNo) + 1;
            }
        }
    }
}
