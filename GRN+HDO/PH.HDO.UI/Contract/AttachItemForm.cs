using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI3;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class AttachItemForm : SubAttachForm
    {
        public AttachItemForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            //this.BindingSource.DataSource = DB.GetNeedAttachList();
        }
    }
}
