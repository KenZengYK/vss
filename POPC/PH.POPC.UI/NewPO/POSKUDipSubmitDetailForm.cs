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
    public partial class POSKUDipSubmitDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public POSKUDipSubmitDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            PH.POPC.BO.POSKUOperate posku = this.BindingSource.Current as PH.POPC.BO.POSKUOperate;
            if (posku.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                posku.HandleType = PH.POPC.BO.Common.DipSubmit;
                posku.HandleNo = posku.POColorSizeDetail.POSKUOperates.Where(p => p.HandleType == PH.POPC.BO.Common.DipSubmit).Max(p => p.HandleNo) + 1;

            }
        }
    }
}
