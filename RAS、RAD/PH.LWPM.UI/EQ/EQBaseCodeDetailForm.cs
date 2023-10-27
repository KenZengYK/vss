using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.LWPM.UI.EQ
{
    public partial class EQBaseCodeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public EQBaseCodeDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            string EQType = (this.PrevForm as EQBaseCodeListForm).EQType;

            if (EQType == "EQItemLevel")
            {
                nameLabel.Visible = false;
                nameTextEdit.Visible = false;
                sortIDLabel.Visible = false;
                sortIDTextEdit.Visible = false;
            }
            else if (EQType == "EQToolsContainer")
            {
                sortIDLabel.Visible = false;
                sortIDTextEdit.Visible = false;
                lbExtraField1.Visible = false;
                txtExtraField1.Visible = false;
            }
        }

        protected override void SaveCurrent()
        {
            BaseCode obj = this.BindingSource.Current as BaseCode;
            obj.Type = (this.PrevForm as EQBaseCodeListForm).EQType;
            base.SaveCurrent();
        }
    }
}
