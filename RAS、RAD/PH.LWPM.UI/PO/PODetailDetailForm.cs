using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PO
{
    public partial class PODetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PODetailDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            int POType = (this.PrevForm as POHeaderDetailForm).POType;
            this.mCTypeLabel.Text = POType == 0 ? "M/C Type:" : "EQ Group:";
            this.modelNoLabel.Text = POType == 0 ? "Model No:" : "Spec:";
            this.lbItemCode.Visible = POType == 1;
            this.txtItemCode.Visible = POType == 1;
        }

        protected override void SaveCurrent()
        {
            (this.BindingSource.Current as PODetail).IsSupplement = (this.ListForm as PODetailListForm).IsSupplement;
            base.SaveCurrent();
        }
    }
}
