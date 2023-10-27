using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Linq;
namespace PH.POPC.UI.NewPO
{
    public partial class POColorSizeSplitDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public POColorSizeSplitDetailForm()
        {
            InitializeComponent();
        }
        PH.POPC.BO.POWireBoneMatrix m_POColorSizeSplit;
        public override void DataBind()
        {
            base.DataBind();
            this.m_POColorSizeSplit = this.BindingSource.Current as PH.POPC.BO.POWireBoneMatrix;
            if (this.m_POColorSizeSplit.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                this.m_POColorSizeSplit.Seq = this.m_POColorSizeSplit.POColorSizeDetail.POWireBoneMatrixes.Max(p => p.Seq) + 1;
            }
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.seqSpinEdit.Properties.ReadOnly = true;
        }
    }
}
